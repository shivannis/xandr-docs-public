---
Title : Publisher Video Analytics Report
Description : The Publisher Video Analytics report can be used to view video event
metrics for a specific publisher. To view such metrics across multiple
---


# Publisher Video Analytics Report





The Publisher Video Analytics report can be used to view video event
metrics for a specific publisher. To view such metrics across multiple
advertisers and publishers, use the
<a href="network-video-analytics-report.html" class="xref">Network Video
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



**Data Retention Period**

Data in this report is retained for 420 days.

**Currency 2.0**



Note: By enabling
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
<th id="ID-0000665e__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000665e__entry__2"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-0000665e__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
buyer of this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
advertiser whose creative served on this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Placement Group</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
placement group (simply a collection of placements) which includes the
placement through which this impression occurred.

Note: For impressions older than 100
days, the ID will be 0.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
placement through which this impression occurred.

Note: For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Brand</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
brand associated with the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
country in which the impression took place.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
deal associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__1">Site
Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
site domain of an impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Application ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Selling Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
seller/publisher currency associated with the video impressions sold.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Creative Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
duration of the video creative (e.g., 15 seconds).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Supply Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Context</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">When
and where the video creative was served. Possible values are Pre-roll,
Mid-roll, Post-roll, Outstream, and Unknown.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Playback Method</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
playback method for the creative, e.g, ' auto-start, sound on'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Player Size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
size of the player based on pixel width, e.g., 'small', 'medium',
'large'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Device Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
type of device where the creative was set to play. Options include
Desktops &amp; Laptops, Mobile Phones, Tablets, TV, Game Consoles, Media
Players, Set Top Box, and Other Devices.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Content Duration<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
length of the video content in seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Content Genre<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
main genre of the program in which the ad will be played. For example,
Action, Adventure, Biography, Business, Comedy, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Content Language<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
language of the video program in which ad will be played. For example,
Spanish.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Content Network<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
network delivering the video content. For example, 9 Story, CBC, Disney,
AMC, Fox, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Content Rating<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
publisher-identified audience group for which the content is rated. For
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Delivery Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
type of streaming content delivery. For example, Video On Demand (VOD)
and Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1">Video Program Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__3">The
higher level categorization of the video program's format on which the
ad will be played. For example, Movie, Series, Special, Show, Event,
Clip, etc.</td>
</tr>
<tr class="even row">
<td colspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__1 ID-0000665e__entry__2 ID-0000665e__entry__3"><sup>1</sup>The
data for this dimension is only available if the publisher has
implemented video taxonomy.</td>
</tr>
</tbody>
</table>



Note: You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.







## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000665e__entry__74"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000665e__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Imps</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of impressions. For video ads, an impression takes place
when the first frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Clicks</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">CTR</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
click-through rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Conversions</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Conversion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
ratio of conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network
Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Total Network
revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Publisher Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Total publisher revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network
Profit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75"><p>The sum of booked revenue plus
reseller revenue, minus total cost.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network revenue
per 1000 impressions, including defaults, PSAs, or errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Sold Network
RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network revenue
per 1000 impressions that were not defaults, PSAs, or errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network
PPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75"><strong>Deprecated.</strong> Total
Network profit per thousand impressions (total
Network RPM - total publisher RPM).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network
ROI</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75"><strong>Deprecated.</strong> Return on
investment for the Network.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Sold Publisher RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Publisher revenue per 1000 impressions
that were not defaults, PSAs, or errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Publisher RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Publisher revenue per 1000 impressions,
including defaults, PSAs, or errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Errors</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times an error occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__74">Ad
Responses</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of video responses served to the player. An ad response
occurs when the VAST document (XML) is served in response to a request.
An ad response doesn't necessarily indicate a successful impression. For
an impression, the first frame of the video must be served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Skips</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times a user skipped the video. Use this metric for
reporting on skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Starts</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Skip Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
percentage of times the user opted to skip the video.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Start Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
percentage of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Video Fill</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
percentage of video impressions delivered out of the total number of
video ad requests received. (impressions/requests)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">100% Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times the video creatives completed 100% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__74">25%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times the video creatives completed 25% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__74">50%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times the video creatives completed 50% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__74">75%
Complete</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total number of times the video creatives completed 75% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Completion Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
ratio of video completions to impressions, expressed as a
percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Render Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
percentage of videos delivered based on the response rate from buyers.
(impressions /ad responses) For video ads, an impression takes place
when the first frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Response Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
percentage of videos served to the video player (ad responses/ad
requests)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Cost</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total amount of costs accrued over the reported period of time. This
generally includes two types of costs, budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Cost eCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total cost per 1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Cost eCPC</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total cost per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Total Cost eCPA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
total cost per conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network Profit
eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network profit
per thousand impressions.

Note: This new field defines "<span
class="ph">Network profit" as the sum of booked revenue and
reseller revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network Profit
eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network profit
per click.

Note: This new field defines "<span
class="ph">Network profit" as the sum of booked revenue and
reseller revenue minus total cost.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network Profit
eCPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network profit
per conversion.

Note: This new field defines "<span
class="ph">Network profit" as the sum of booked revenue and
reseller revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Network Profit
Margin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__75">Network profit
margin.

Note: This new field defines "<span
class="ph">Network profit" as the sum of booked revenue and
reseller revenue minus total cost.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Video Content Duration<sup>2</sup></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
length of the video content in seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Average View Time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">An
estimate for the average duration in seconds (rounded to 0 decimal
places) of the creative that was viewed. This is calculated by
approximating the duration watched as the mid-point between the video
events (for example, a start event would estimate that 12.5% of the
creative is viewed).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74">Average View Time Percent</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000665e__entry__75">The
average view time expressed as a percentage of the total possible view
time.</td>
</tr>
<tr class="even row">
<td colspan="2" class="entry colsep-1 rowsep-1"
headers="ID-0000665e__entry__74 ID-0000665e__entry__75"><sup>2</sup>The
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

      
    - <span id="ID-0000665e__d10e107">**Export, send results via
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
6.  <span id="ID-0000665e__d10e136">Click Run
    report to send your report request.






