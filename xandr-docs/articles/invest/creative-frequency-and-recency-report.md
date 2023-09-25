---
Title : Creative Frequency and Recency Report
Description : The Creative Frequency and Recency report lets you view how often and
how frequently users are viewing a specific advertiser's creatives.
---


# Creative Frequency and Recency Report





The Creative Frequency and Recency report lets you view how often and
how frequently users are viewing a specific advertiser's creatives.

Time Frame

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



Currency 2.0





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





Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000b485__entry__1" class="entry">Column</th>
<th id="ID-0000b485__entry__2" class="entry">Filter?</th>
<th id="ID-0000b485__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The insertion order
under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Line Item</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The line item under
which the impression was purchased. For more information about line
items, see <a href="working-with-line-items.md" class="xref">Working
with Line Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Campaign</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The campaign that
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Split</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Creative</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The creative that
we're reporting on the frequency and/or recency of.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Media Type</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The media type is the
general display style of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Size</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The size of the
creative; for example, <code class="ph codeph">"300x250"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Creative Recency</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">How recently the
creative was viewed by the user. For more information, see <a
href="creative-frequency-and-recency-report.html#ID-0000b485__ID-0000b60c"
class="xref">Creative Recency Definitions</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Creative
Frequency</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">How many times the
creative has been viewed by the user. For more information, see <a
href="creative-frequency-and-recency-report.html#ID-0000b485__ID-0000b6e5"
class="xref">Creative Frequency Definitions</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">IO: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The trafficker
associated with this insertion order. This is an insertion order
reporting label; for more information, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">IO: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The sales rep
associated with this insertion order. This is an insertion order
reporting label; for more information, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">IO: Type (reporting
label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The type of insertion
order. This is an insertion order reporting label; for more information,
see <a href="working-with-insertion-orders.md" class="xref">Working
with Insertion Orders</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">LI: Type (reporting
label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The type of line item.
This is a line item reporting label; for more information, see <a
href="working-with-line-items.md" class="xref">Working with Line
Items</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">LI: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The trafficker
associated with this line item. This is a line item reporting label; for
more information, see <a href="working-with-line-items.md"
class="xref">Working with Line Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">LI: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The sales rep
associated with this line item. This is a line item reporting label; for
more information, see <a href="working-with-line-items.md"
class="xref">Working with Line Items</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Campaign: Test/Control
(reporting label)</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The test/control
segment associated with the campaign. (Does not apply to all
advertisers.)</td>
</tr>
</tbody>
</table>



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000b485__entry__52" class="entry">Column</th>
<th id="ID-0000b485__entry__53" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Imps</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Clicks</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">CTR</td>
<td class="entry" headers="ID-0000b485__entry__53">The click-through
rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Total
Conversions</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Conversion Rate</td>
<td class="entry" headers="ID-0000b485__entry__53">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Booked Revenue</td>
<td class="entry" headers="ID-0000b485__entry__53">The revenue received
from the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Post View
Conversions</td>
<td class="entry" headers="ID-0000b485__entry__53">The number of
post-view conversions. For more information about how we attribute
post-view conversions, see <a href="conversion-attribution.md"
class="xref">Conversion Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Post Click
Conversions</td>
<td class="entry" headers="ID-0000b485__entry__53">The number of
post-click conversions. For more information about how we attribute
post-view conversions, see <a href="conversion-attribution.md"
class="xref">Conversion Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Post Click
Revenue</td>
<td class="entry" headers="ID-0000b485__entry__53">The amount of revenue
derived from post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Post View
Revenue</td>
<td class="entry" headers="ID-0000b485__entry__53">The amount of revenue
derived from post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Media Cost</td>
<td class="entry" headers="ID-0000b485__entry__53">The total amount of
media cost across both managed publishers and RTB inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Cost eCPC</td>
<td class="entry" headers="ID-0000b485__entry__53">The cost per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Cost eCPM</td>
<td class="entry" headers="ID-0000b485__entry__53">The cost per mille
(1000 impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Cost eCPA</td>
<td class="entry" headers="ID-0000b485__entry__53">The cost per
acquisition/conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Profit eCPM</td>
<td class="entry" headers="ID-0000b485__entry__53">Profit (defined as
booked revenue minus total cost) per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Post Click Conversion
Rate</td>
<td class="entry" headers="ID-0000b485__entry__53">The ratio of
post-click conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Total Cost</td>
<td class="entry" headers="ID-0000b485__entry__53">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Total Cost eCPM</td>
<td class="entry" headers="ID-0000b485__entry__53">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Total Cost eCPC</td>
<td class="entry" headers="ID-0000b485__entry__53">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Total Cost eCPA</td>
<td class="entry" headers="ID-0000b485__entry__53">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Profit</td>
<td class="entry" headers="ID-0000b485__entry__53">Booked revenue minus
total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Profit eCPC</td>
<td class="entry" headers="ID-0000b485__entry__53">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Profit eCPA</td>
<td class="entry" headers="ID-0000b485__entry__53">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Profit Margin</td>
<td class="entry" headers="ID-0000b485__entry__53">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Video Skips</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Video Starts</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">25% Video
Complete</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">50% Video
Complete</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">75% Video
Complete</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Video
Completions</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Videos Served</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Video Errors</td>
<td class="entry" headers="ID-0000b485__entry__53">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-0000b485__entry__53">The revenue per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Cost Per Video
Complete</td>
<td class="entry" headers="ID-0000b485__entry__53">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Video Completion
Rate</td>
<td class="entry" headers="ID-0000b485__entry__53">The ratio of video
completions to impressions, expressed as a percentage (video
completions/total impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__52">Video Start Rate</td>
<td class="entry" headers="ID-0000b485__entry__53">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__52">Video Skip Rate</td>
<td class="entry" headers="ID-0000b485__entry__53">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



Creative Recency Definitions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000b485__entry__128" class="entry">Value</th>
<th id="ID-0000b485__entry__129" class="entry">Name</th>
<th id="ID-0000b485__entry__130" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">-2</td>
<td class="entry" headers="ID-0000b485__entry__129">no-cookie-data</td>
<td class="entry" headers="ID-0000b485__entry__130">The cookie lookup
failed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">-1</td>
<td class="entry" headers="ID-0000b485__entry__129">no-cookie</td>
<td class="entry" headers="ID-0000b485__entry__130">The user does not
have cookies enabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">0</td>
<td class="entry" headers="ID-0000b485__entry__129">&lt; 1 minute</td>
<td class="entry" headers="ID-0000b485__entry__130">The user has never
viewed the creative or last viewed the creative less than 1 minute
ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">1</td>
<td class="entry" headers="ID-0000b485__entry__129">1-5 minutes</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 1 and 5 minutes ago.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">2</td>
<td class="entry" headers="ID-0000b485__entry__129">5-15 minutes</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 5 and 15 minutes ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">3</td>
<td class="entry" headers="ID-0000b485__entry__129">15-30 minutes</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 15 and 30 minutes ago.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">4</td>
<td class="entry" headers="ID-0000b485__entry__129">30-60 minutes</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 30 and 60 minutes ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">5</td>
<td class="entry" headers="ID-0000b485__entry__129">1-4 hours</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 1 and 4 hours ago.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">6</td>
<td class="entry" headers="ID-0000b485__entry__129">4-12 hours</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 4 and 12 hours ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">7</td>
<td class="entry" headers="ID-0000b485__entry__129">12-24 hours</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 12 and 24 hours ago.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">8</td>
<td class="entry" headers="ID-0000b485__entry__129">1-2 days</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 1 and 2 days ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">9</td>
<td class="entry" headers="ID-0000b485__entry__129">2-7 days</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 2 and 7 days ago.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__128">10</td>
<td class="entry" headers="ID-0000b485__entry__129">8-14 days</td>
<td class="entry" headers="ID-0000b485__entry__130">The user last viewed
the creative between 8 and 14 days ago.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__128">11</td>
<td class="entry" headers="ID-0000b485__entry__129">14-30 days</td>
<td id="ID-0000b485__ID-0000b6e5" class="entry"
headers="ID-0000b485__entry__130">The user last viewed the creative
between 14 and 30 days ago.</td>
</tr>
</tbody>
</table>



Creative Frequency Definitions

Please note that the below buckets refer to the lifetime of the user and
the lifetime of the creative. For example, if a user falls into the
21-40 bucket, that means they have seen this creative between 21 and 40
times since the user's cookie was first created and the creative first
served.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000b485__entry__173" class="entry">Value</th>
<th id="ID-0000b485__entry__174" class="entry">Name</th>
<th id="ID-0000b485__entry__175" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">-2</td>
<td class="entry" headers="ID-0000b485__entry__174">no-cookie-data</td>
<td class="entry" headers="ID-0000b485__entry__175">The cookie lookup
failed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">-1</td>
<td class="entry" headers="ID-0000b485__entry__174">no-cookie</td>
<td class="entry" headers="ID-0000b485__entry__175">The user does not
have cookies enabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">0</td>
<td class="entry" headers="ID-0000b485__entry__174">0</td>
<td class="entry" headers="ID-0000b485__entry__175">The user had not
viewed the creative prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">1</td>
<td class="entry" headers="ID-0000b485__entry__174">1</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative one time prior to the current impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">2</td>
<td class="entry" headers="ID-0000b485__entry__174">2-5</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 2 and 5 times prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">3</td>
<td class="entry" headers="ID-0000b485__entry__174">6-10</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 6 and 10 times prior to the current impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">4</td>
<td class="entry" headers="ID-0000b485__entry__174">11-20</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 11 and 20 times prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">5</td>
<td class="entry" headers="ID-0000b485__entry__174">21-40</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 21 and 40 times prior to the current impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">6</td>
<td class="entry" headers="ID-0000b485__entry__174">41-60</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 41 and 60 times prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">7</td>
<td class="entry" headers="ID-0000b485__entry__174">61-100</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 61 and 100 times prior to the current impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">8</td>
<td class="entry" headers="ID-0000b485__entry__174">101-150</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 101 and 150 times prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">9</td>
<td class="entry" headers="ID-0000b485__entry__174">151-250</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 151 and 250 times prior to the current impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__173">10</td>
<td class="entry" headers="ID-0000b485__entry__174">251-500</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative between 251 and 500 times prior to the current impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__173">11</td>
<td class="entry" headers="ID-0000b485__entry__174">500+</td>
<td class="entry" headers="ID-0000b485__entry__175">The user viewed the
creative 500 times or more prior to the current impression.</td>
</tr>
</tbody>
</table>



To Run your Report

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

      
    - **Export, send results via
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
6.  Click Run
    report to send your report request.






