---
Title : Advertiser Video Analytics Report
Description : The Advertiser Video Analytics report can be used to view video event
ms.date: 10/28/2023
metrics for a specific advertiser. To view such metrics across multiple
---


# Advertiser Video Analytics Report





The Advertiser Video Analytics report can be used to view video event
metrics for a specific advertiser. To view such metrics across multiple
advertisers and publishers, use the
<a href="network-video-analytics-report.md" class="xref">Network Video
Analytics Report</a>.





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



For more information about how quickly report data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.

**Data Retention Period**

Data in this report is retained for 420 days.

**Currency 2.0**



<b>Note:</b> By enabling
Currency 2.0, you can select a
currency for each individual report if you prefer not to use
USD as the default currency. The
report will show all the monetary fields in your report using the
selected currency. For example, if you select
Advertiser, click the
Currency 2.0 toggle to enable it, and
select Japanese Yen (JPY) from the
Currency menu, the report will show
all monetary data in JPY, including data associated with child objects
such as line items.







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000aa86__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000aa86__entry__2"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-0000aa86__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Sellers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
seller of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
publisher on whose inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
placement through which this impression occurred.

<b>Note:</b> For impressions older than 100
days, placements are aggregated into one row with  <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__1">Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
line item under which this impression was purchased. For more
information about line items, see <a href="working-with-line-items.md"
class="xref">Working with Line Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
campaign that purchased this impression. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Split</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
name and ID of the split that purchased the impressions in this data
set. Splits are only applicable to augmented line items. For any rows
with a campaign name, the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
creative that served on this impression. For more information about
creatives, see <a href="working-with-creatives.md" class="xref"
title="You can traffic a wide range of creative types, from banners to increasingly pervasive rich media types, through the Xandr platform. Only secure content is supported.">Working
with Creatives</a>

<b>Note:</b> For impressions older than 100
days, creatives will be aggregated into one row with <code
class="ph codeph">0</code> as the ID and a generic name.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Creative Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
duration of the video creative in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
country in which the impression took place.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Insertion Order</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
insertion order under which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Creative Recency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">How
recently the creative was viewed by the user. For more information,
see <a href="creative-frequency-and-recency-report.md"
class="xref">Creative Frequency and Recency Report</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Creative Frequency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">How
many times the creative has been viewed by the user. For more
information, see Creative Frequency Definitions in the <a
href="creative-frequency-and-recency-report.md" class="xref">Creative
Frequency and Recency Report</a> page.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
deal associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__1">IO:
Trafficker (reporting label)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
trafficker associated with this insertion order. This is an insertion
order reporting label; for more information, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__1">IO:
Sales Rep (reporting label)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
sales rep associated with this insertion order. This is an insertion
order reporting label; for more information, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__1">Site
Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
domain where the impression occurred. For mobile applications, this can
be the URL of the app's location in the app store. There are two
additional values that may appear in place of a domain,
specifically: <code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Application ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Buying Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
currency used by the buyer. This dimension is available only when
Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Clearing Event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
clearing event associated with the impression.
<ul>
<li>Impressions</li>
<li>Views - Standard Display</li>
<li>Views - Standard Display - Moat</li>
<li>Views - Custom Display - 100pv1s</li>
<li>Views - Custom Display - 100pv1s - Moat</li>
<li>Views - Standard Video</li>
<li>Views - Custom Video - 100pv50pd</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Supply Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', mobile_app, and mobile_web.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Context</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
context of the video creative, e.g., 'pre-roll'.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Playback Method</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Player Size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
size of the player based on pixel width, e.g., 'small', 'medium',
'large'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Device Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
type of device where the creative was set to play. Options include
Desktops &amp; Laptops, Mobile Phones, Tablets, TV, Game Consoles, Media
Players, Set Top Box, and Other Devices.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Content Duration<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
length of the video content in seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Content Genre<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
main genre of the program in which the ad will be played. For example,
Action, Adventure, Biography, Business, Comedy, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Content Language<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
language of the video program in which ad will be played. For example,
Spanish.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Content Network<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
network delivering the video content. For example, 9 Story, CBC, Disney,
AMC, Fox, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Content Rating<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
publisher-identified audience group for which the content is rated. For
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Delivery Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
type of streaming content delivery. For example, Video On Demand (VOD)
and Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1">Video Program Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__3">The
higher level categorization of the video program's format on which the
ad will be played. For example, Movie, Series, Special, Show, Event,
Clip, etc.</td>
</tr>
<tr class="even row">
<td colspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__1 ID-0000aa86__entry__2 ID-0000aa86__entry__3"><sup>1</sup>The
data for this dimension is only available if the publisher has
implemented video taxonomy.</td>
</tr>
</tbody>
</table>



<b>Note:</b> You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.







## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000aa86__entry__98"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000aa86__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Imps</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Clicks</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Clearing Event Booked Revenue Per
Event</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
booked revenue per event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Clearing Events Booked Revenue CPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
booked revenue in CPM per event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Booked Revenue vCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
booked revenue expressed in terms of viewable CPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Media Cost vCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
media cost expressed in terms of viewable CPM.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit Margin</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
average profit margin.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Clearing Event Buyer Media Cost Per
Event</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
Buyer's media cost per clearing event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Clearing Event Buyer Media Cost
eCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
Buyer's media cost in CPM per clearing event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">CTR</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
click-through rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Total Convs</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Conversion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
ratio of conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Revenue</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total revenue; the sum of booked and resold revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Revenue eCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total revenue, expressed as eCPM. For definitions of eCPM and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Industry Reference Glossary</a> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Revenue eCPC</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total revenue, expressed as eCPC. For definitions of eCPM and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Industry Reference Glossary</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Revenue eCPA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
revenue per conversion or acquisition, expressed as eCPA. For the
definition of eCPA, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Industry Reference Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Cost eCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
cost per thousand impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Cost</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total media cost across direct publishers and RTB inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Cost eCPC</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
cost per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Cost eCPA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
cost per acquisition (conversion).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__99"><p>Booked revenue minus total
cost.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__99"><p>The profit per thousand impressions.
Here, profit is defined as booked revenue minus total cost.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit Margin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__99"><p>Profit divided by booked revenue.
Here, profit is defined as booked revenue minus total cost.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Post View Conversion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
ratio of post-view conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Post Click Conversion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
ratio of post-click conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Errors</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times an error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Starts</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Start Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Skips</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times a user skipped the video. Use this metric for
reporting when buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Skip Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of times the user opted to skip the video.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__98">25%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times the video creatives completed 25% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__98">50%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times the video completed 50% of the entire duration of
time.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__98">75%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times the video completed 75% of the entire duration of
time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">100% Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of times the video played for the entire duration of
time.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Completion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
ratio of video completions to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Revenue per Video Complete (RPVC)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
revenue per video completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Cost per Video Complete (CPVC)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
cost per video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__98">Ad
Responses</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of video responses served to the player. An ad response
occurs when the VAST document (XML) is served in response to a request.
An ad response doesn't necessarily indicate a successful impression. For
an impression, the first frame of the video must be served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">View-Measured Imps</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total number of impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Viewability Measurement Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of impressions measured for viewability out of the total
number of impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Viewable Imps</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
number of measured impressions that were viewable, per the IAB
Viewability definition, which states that 50% of the pixels of a
creative are in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Viewability Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of impressions that were viewable out of the total number of
impressions measured for viewability. (viewed imps / view-measured
imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Custom Viewability Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of impressions that were viewable, per the member-level
custom definition configuration, out of the total number of impressions
measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Custom Viewable Imps</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
number of measured impressions that were viewable, per the member-level
custom definition configuration (for more details, contact your <span
class="ph">Xandr account representative).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Render Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
percentage of videos delivered based on the response rate from buyers.
(impressions /ad responses) For video ads, an impression takes place
when the first frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Total Cost</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total amount of costs accrued over the reported period of time. This
generally includes two types of costs, budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Total Cost eCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total cost per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Total Cost eCPC</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total cost per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Total Cost eCPA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
total cost per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__99">Profit per click. Here, profit is
defined as booked revenue minus total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Profit eCPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__99">Profit per conversion. Here, profit is
defined as booked revenue minus total cost.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Video Content Duration<sup>2</sup></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
length of the video content in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Average View Time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">An
estimate for the average duration in seconds (rounded to 0 decimal
places) of the creative that was viewed. This is calculated by
approximating the duration watched as the mid-point between the video
events (for example, a start event would estimate that 12.5% of the
creative is viewed).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98">Average View Time Percent</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000aa86__entry__99">The
average view time expressed as a percentage of the total possible view
time.</td>
</tr>
<tr class="odd row">
<td colspan="2" class="entry colsep-1 rowsep-1"
headers="ID-0000aa86__entry__98 ID-0000aa86__entry__99"><sup>2</sup>The
data for this metric is only available if the publisher has implemented
video taxonomy.</td>
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
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
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
    

    <b>Warning:</b> The more dimensions you
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
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-0000aa86__d10e107">**Export, send results via
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
6.  <span id="ID-0000aa86__d10e136">Click Run
    report to send your report request.





## Related Topics

- <a href="network-reporting.md" class="xref">Network Reporting</a>






