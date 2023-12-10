---
Title : Prebid Server Premium Seller Analytics
Description : The Prebid Server Premium Seller Analytics Report contains performance
ms.date: 10/28/2023
ms.custom: digital-platform-api
information on configured Prebid Server Premium (PSP) demand partners.
---


# Prebid Server Premium Seller Analytics







The Prebid Server Premium Seller Analytics Report contains performance
information on configured Prebid Server Premium (PSP) demand partners.
Using this report, you can:

- Track revenue by heading bidder demand partner, publisher, or
  geographical region.
- Track lift on inventory you've opened up to header bidding demand.
- Monitor the health and efficiency of your Prebid Server Premium
  partners and placements.

For information on other reports via API, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>. For information on
accessing data via UI, see <a
href="monetize_monetize-standard/reporting-guide.md"
class="xref" target="_blank">Reporting Guide</a> for Monetize and <a
href="monetize_monetize-standard/prebid-server-premium-seller-analytics.md"
class="xref" target="_blank">Prebid Server Premium Seller Analytics
Report</a>.





>

## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour
- last_48_hours
- today
- yesterday
- last_7_days
- month_to_date
- quarter_to_date
- last_month
- lifetime
- month_to_yesterday

The `time_granularity` of the data is hourly. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="prebid-server-premium-seller-analytics.md#Prebid-Server-Premium-Seller-Analytics__example"
class="xref">Example</a> below.

**Data Retention Period**

Data retention period for this report is 30 days.



>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02-01-09:54"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
hour of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
month of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
day of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
ID of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"Cool Seller Inc"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">tag_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
ID of the placement tag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
ID of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"Neat Publisher Ltd"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"Neat Publisher Ltd (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">A
string consisting of the publisher name and publisher ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">300x250</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
width and height of the placement associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
country abbreviation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name of the geographical country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
ID of the site. For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"My Site"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name of the site. For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"My Site (555)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">A
string containing the name and ID of the site. For more information, see
the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">tag_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"My Placement"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name of the tag associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">header_bidding_demand_partner_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">9645</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
ID of the demand partner associated with the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">header_bidding_demand_partner_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"PubMatic (PSP)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
demand partner associated with the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">header_bidding_demand_partner</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">"PubMatic (PSP) (9645)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
name and ID of the demand partner associated with the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__1">included_header_bidding_demand</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__4"><code
class="ph codeph">654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__dimensions__entry__5">The
included demand from non-Xandr demand partners.</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">34534</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
total number of impressions (including defaults).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">seller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">999.99</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">total
seller revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
seller revenue on the deal, represented as a dollar amount.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">seller_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">1.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">See
Description</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
seller revenue on the deal, represented in eCPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">1500</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">See
Description</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
total number of impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">87.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">imps_viewed
/ view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
percentage of impressions that were viewable out of the total number of
impressions measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">91.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">view_measured_imps
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
percentage of impressions measured for viewability out of the total
number of impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">1100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">See
Description</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
number of viewable impressions for the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">ad_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">1200</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">See
Description</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
number of ad requests associated with the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__1">fill_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__3"><code
class="ph codeph">85.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__4">Kept
impressions + resold impressions / total number of impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Seller-Analytics__metrics__entry__5">The
percentage of ad requests that were filled with demand. (Kept
Impressions and Resold Impressions / total number of impressions).</td>
</tr>
</tbody>
</table>



>

## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"prebid_server_analytics"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (`year`, `month`,
`day`), and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat prebid_server_analytics
  {"report": 
    {
        "format": "csv",
        "report_interval": "yesterday",
        "columns": ["hour", "publisher_id","site_id"," "header_bidding_demand_partner", "imps", "seller_revenue", "view_rate"],
        "report_type": "prebid_server_analytics"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @prebid_server_analytics "https://api.appnexus.com/report"
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
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"publisher_id\"],\"columns\":[\"hour\", \"publisher_id\",\"site_id\",\"header_bidding_demand_partner\",\"imps\",\"seller_revenue\", \"view_rate\"],\"report_type\":\"prebid_server_analytics\"
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
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=97a181df6d77a8f3cd5a45eff4ea3dab' > /tmp/prebid_server_analytics.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.







## Related Topics

- <a
  href="report-service.md"
  class="xref" target="_blank">Report Service</a>
- <a
  href="monetize_monetize-standard/prebid-server-premium-seller-analytics.md"
  class="xref" target="_blank">Prebid Server Premium Seller Analytics
  Report (UI)</a>






