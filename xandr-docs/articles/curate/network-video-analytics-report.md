---
Title : Member Video Analytics Report
Description : The Member Video Analytics report can be used to
view video event metrics across multiple buyers and sellers for a
network member.
---


# Member Video Analytics Report





The Member Video Analytics report can be used to
view video event metrics across multiple buyers and sellers for a
network member.





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
<th id="ID-00002b8f__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00002b8f__entry__2"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-00002b8f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
buyer of this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
seller of this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
advertiser whose creative served on this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
publisher on whose inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Placement Group</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
placement group (simply a collection of placements) which includes the
placement through which this impression occurred.

Note: For impressions older than 100
days, the ID will be 0.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
placement through which this impression occurred.

Note: For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Insertion Order</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
insertion order under which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
line item under which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
campaign which purchased this impression. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Split</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
name and ID of the split that purchased the impressions in this data
set. Splits are only applicable to augmented line items. For any rows
with a campaign name, the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Brand</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
brand associated with the creative. Xandr keeps
a list of advertiser brands in our systems that can be applied to a
creative when it's uploaded. For impression type "Resold", no
information is available in the Brand field for this report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
country in which the impression took place.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
deal associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
creative served for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Creative Recency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">How
recently the creative was viewed by the user. For more information, see
the <a href="creative-frequency-and-recency-report.html"
class="xref">creative-frequency-and-recency-report.html</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Creative Frequency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">How
many times the creative has been viewed by the user. For more
information, see Creative Frequency Definitions in the <a
href="creative-frequency-and-recency-report.html"
class="xref">creative-frequency-and-recency-report.html</a> page.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">IO:
Trafficker (reporting label)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
trafficker associated with this insertion order. This is an insertion
order reporting label.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">IO:
Sales Rep (reporting label)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
sales rep associated with this insertion order. This is an insertion
order reporting label.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Site
Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
domain where the impression occurred. For mobile applications, this can
be the URL of the app's location in the app store. There are two
additional values that may appear in place of a domain, specifically:
<code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Application ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Impression Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">See
<strong>Impression Types</strong> below for definitions of the different
types of impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Supply Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Context</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">When
and where the video creative was served. Possible values are Pre-roll,
Mid-roll, Post-roll, Outstream, and Unknown.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Playback Method</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Player Size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
size of the player based on pixel width, e.g., 'small', 'medium',
'large'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
name of a would-be buyer that submitted a bid on the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Call
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
type of handler that was used to send the impression to <span
class="ph">Xandr (e.g., ttj, ut, mob, ptv, openrtb).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Creative Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
duration of the video creative in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Device Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
type of device where the creative was set to play. Options include
Desktops &amp; Laptops, Mobile Phones, Tablets, TV, Game Consoles, Media
Players, Set Top Box, and Other Devices.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Buying Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
transaction currency that the buyer used to purchase this impression.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Selling Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
transaction currency used by the seller to sell this impression. This
dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Clearing Event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
underlying auction event that was transacted (e.g., impression, viewable
impression, completed video).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Content Duration<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
length of the video content in seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Content Genre<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
main genre of the program in which the ad will be played. For example,
Action, Adventure, Biography, Business, Comedy, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Content Language<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
language of the video program in which ad will be played. For example,
Spanish.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Content Network<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
network delivering the video content. For example, 9 Story, CBC, Disney,
AMC, Fox, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Content Rating<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
publisher-identified audience group for which the content is rated. For
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Delivery Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
type of streaming content delivery. For example, Video On Demand (VOD)
and Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1">Video Program Type<sup>1</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">The
higher level categorization of the video program's format on which the
ad will be played. For example, Movie, Series, Special, Show, Event,
Clip, etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Code
1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">An
alias added to the placement object that is reportable as a
sub-dimension of Placement. The report shows the current value of the
alias and does not reflect historical values. This information is only
reportable to Sellers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Code
2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">An
alias added to the placement object that is reportable as a
sub-dimension of Placement. The report shows the current value of the
alias and does not reflect historical values. This information is only
reportable to Sellers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__1">Code
3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__3">An
alias added to the placement object that is reportable as a
sub-dimension of Placement. The report shows the current value of the
alias and does not reflect historical values. This information is only
reportable to Sellers.</td>
</tr>
<tr class="odd row">
<td colspan="3" class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__1 ID-00002b8f__entry__2 ID-00002b8f__entry__3"><sup>1</sup>The
data for this dimension is only available if the publisher has
implemented video taxonomy.</td>
</tr>
</tbody>
</table>







Note: In addition, you can also filter
on a particular number of impressions using the **Minimum Impressions**
filter.









## Metrics





Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b8f__entry__131"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00002b8f__entry__132"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of impressions. For
video ads, an impression takes place when the first frame of the video
is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (default)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of default creatives served
because there were no valid bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (default error)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of default creatives served
due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (kept)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of impressions where a
managed advertiser's creative served on a managed publisher's site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (PSA)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of impressions that showed
PSAs (Public Service Announcements). PSAs are served only if there is no
other creative to serve.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (resold)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of impressions that were
resold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (RTB)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of creatives served on
third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Imps (blank)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of blank creatives served.
Blanks can be served when no default creative or PSA is specified in the
tag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Video Imps Blank</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of blank video creatives
served. Blanks can be served when no default creative or PSA is
specified in the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">CTR</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The click-through rate, or the ratio
of clicks to impressions, expressed as a percentage.
(clicks/impressions)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of post-view and
post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Conversion Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The ratio of conversions to
impressions, expressed as a percentage (conversions/impressions)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total revenue; the sum of booked
and resold revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Revenue per Video Complete (RPVC)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The revenue per video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The revenue per 1000 impressions,
including defaults, PSAs, and errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Network RPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The revenue per 1000 impressions,
including defaults, PSAs, and errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Cost</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total media cost across direct
publishers and RTB inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Cost per Video Complete (CPVC)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The cost per video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132"><p>Booked revenue minus total
cost</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total media cost per 1000
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total Network revenue minus
cost</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">PPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132"><strong>Deprecated.</strong> The total
profit per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Viewable Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of measured impressions
that were viewable, per the IAB Viewability definition, which states
that 50% of the pixels of a creative are in view during 1 consecutive
second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">View-Measured Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of impressions that
were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Custom Viewable Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of measured impressions
that were viewable, per the member-level custom definition
configuration. For more details, contact your <span
class="ph">Xandr account representative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Viewability Measurement Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of impressions measured
for viewability out of the total number of impressions. (view-measured
impressions/total impressions)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Viewability Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of impressions that
were viewable out of the total number of impressions measured for
viewability. (viewed impressions/view-measured impressions)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Custom Viewability Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of impressions that
were viewable, per the member-level custom definition configuration, out
of the total number of impressions measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Completion Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The ratio of video completions to
impressions, expressed as a percentage. (video completions/total
impressions)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Render Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of videos delivered
based on the response rate from buyers (impressions/ad responses). For
video ads, an impression takes place when the first frame of the video
is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Response Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of videos served to the
video player (ad responses/ad requests)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__131">Ad
Requests</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The number of times the player
initiated a request for video ad content.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Skip Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of times the user opted
to skip the video.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Start Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of times the first
segment of the video creative was downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Error Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of videos that
generated an error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">25% Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times the video
creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">50% Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times the video
completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">75% Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times the video
completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Companion Ad Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times someone
clicked on an ad adjacent to the video.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Companion Ad Responses</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of companion ads
served adjacent to the video.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__131">Ad
Responses</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of video responses
served to the player. An ad response occurs when the VAST document (XML)
is served in response to a request. An ad response doesn't necessarily
indicate a successful impression. For an impression, the first frame of
the video must be served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">100% Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times the video
played for the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Errors</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times an error
occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Skips</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times a user
skipped the video. Use this metric for reporting when buying skippable
inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Starts</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total number of times the first
segment of the video creative was downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Fill Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The percentage of video impressions
delivered out of the total number of video ad requests received. (total
impressions/total requests)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Clearing Event Booked Revenue Per
Event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total booked revenue per clearing
event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Clearing Events Booked Revenue
CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The booked revenue per 1000
events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Booked Revenue vCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The booked revenue, expressed as a
viewable CPM.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Media Cost vCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The media cost, expressed as a
viewable CPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Clearing Event Buyer Media Cost Per
Event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The media cost per clearing
event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Clearing Event Buyer Media Cost
eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The media cost per 1000 events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Cost</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total amount of costs accrued over
the reported period of time. This generally includes two types of costs,
budgeted costs (media cost, data cost, partner fees, serving fees,
commissions) and publisher revenue if you track publisher payouts on the
platform.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Cost eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total cost per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Cost eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total cost per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Total Cost eCPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The total cost per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Profit per thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Profit per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit eCPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Profit per conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Profit Margin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Buyer profit margin.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Network Profit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The sum of booked revenue and reseller
revenue minus total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Network Profit eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Network profit per thousand
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Network Profit eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Network profit per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Network Profit eCPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Network profit per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Network Profit Margin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">Network profit margin.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Video Content
Duration<sup>2</sup></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The length of the video content in
seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Average View Time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__132">An
estimate for the average duration in seconds (rounded to 0 decimal
places) of the creative that was viewed. This is calculated by
approximating the duration watched as the mid-point between the video
events (for example, a start event would estimate that 12.5% of the
creative is viewed).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131">Average View Time Percent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__132">The average view time expressed as a
percentage of the total possible view time.</td>
</tr>
<tr class="even row">
<td colspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__131 ID-00002b8f__entry__132"><sup>2</sup>The
data for this metric is only available if the publisher has implemented
video taxonomy.</td>
</tr>
</tbody>
</table>







## Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b8f__entry__272"
class="entry colsep-1 rowsep-1">Value</th>
<th id="ID-00002b8f__entry__273"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002b8f__entry__274"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">Blank</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">No
creative served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">PSA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">A
public service announcement served because no other creative was
eligible.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">Default Error</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">A
default creative served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">Default</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">A
default creative served because no line item bid
or no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">Kept</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__274">One of your managed advertisers served
a creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">Resold</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__274">The impression was sold to a
third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">RTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__274">Your creative served on third-party
inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">PSA Error</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">A
public service announcement served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">External Impression</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">An
impression from an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__272">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b8f__entry__273">External Click</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002b8f__entry__274">A
click from a click tracker.</td>
</tr>
</tbody>
</table>







## To Run Your Report

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

      
    - <span id="ID-00002b8f__d11e107">**Export, send results via
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
6.  <span id="ID-00002b8f__d11e136">Click Run
    report to send your report request.






