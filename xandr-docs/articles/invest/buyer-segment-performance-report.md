---
Title : Buyer Segment Performance Report
Description : This report provides buyers with segment performance across multiple ad
campaigns and advertisers. This allows you to:
---


# Buyer Segment Performance Report





This report provides buyers with segment performance across multiple ad
campaigns and advertisers. This allows you to:

- Understand the performance of individual targeted segments across your
  account
- Filter for specific conversion pixels to further identify how these
  segments contribute to your overall buying strategy



<b>Note:</b> **Impressions across user
segments:** Since this report aggregates impressions served by user
segment, impressions associated with users present in multiple segments
will be counted more than once. The purpose of this report is to analyze
user segments, not individual user counts. The report is set to
automatically group by segment.







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







## Data Retention Period

This report's data is retained for 45 days. For more information about
how quickly reporting data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.





## Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000990c__entry__1" class="entry">Column</th>
<th id="ID-0000990c__entry__2" class="entry">Filter?</th>
<th id="ID-0000990c__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Advertiser</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The advertiser name
and ID, in the format "Great Advertiser (456)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The insertion order
associated with the impression, in the format "Midwest Winter Getaways
(789)".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Line Item</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The line item
associated with the impression, in the format "Kansas City Winter
Commuters (314)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Campaign</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The campaign
associated with the impression, in the format "South Texas Ford Drivers
(123)". (Does not apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Split</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Segment</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The user segment
associated with the impression in the format "Submitted application
(220)".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Buying Currency</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the monetary metrics to be displayed in the buying
currency.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Age</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The age range of the
user associated with the impression</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Gender</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The gender of the user
assocaited with the impression.</td>
</tr>
</tbody>
</table>



Reports automatically group by all selected dimensions.



<b>Note:</b> In addition, you can also filter
on:

- one or more conversion pixels using the **Conversion Pixel** filter.
- a particular number of impressions using the **Minimum Impressions**
  filter.







## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000990c__entry__31" class="entry">Column</th>
<th id="ID-0000990c__entry__32" class="entry">Type</th>
<th id="ID-0000990c__entry__33" class="entry">Example</th>
<th id="ID-0000990c__entry__34" class="entry">Formula</th>
<th id="ID-0000990c__entry__35" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Imps</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">34534</td>
<td class="entry" headers="ID-0000990c__entry__34">Imps</td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Clicks</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">345</td>
<td class="entry" headers="ID-0000990c__entry__34">Clicks</td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">CTR</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry" headers="ID-0000990c__entry__33">0.00237</td>
<td class="entry" headers="ID-0000990c__entry__34">(Clicks / Imps) x
100</td>
<td class="entry" headers="ID-0000990c__entry__35">The rate of clicks to
impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Conversion Rate</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry"
headers="ID-0000990c__entry__33">0.000221877080097626</td>
<td class="entry" headers="ID-0000990c__entry__34">Total Convs /
Imps</td>
<td class="entry" headers="ID-0000990c__entry__35">The ratio of
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Booked Revenue</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">450.00</td>
<td class="entry" headers="ID-0000990c__entry__34">Booked Revenue</td>
<td class="entry" headers="ID-0000990c__entry__35">The total revenue
booked through direct advertisers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Post View
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">15</td>
<td class="entry" headers="ID-0000990c__entry__34">Post View
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Post Click Convs</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">19</td>
<td class="entry" headers="ID-0000990c__entry__34">Post Click Convs</td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Media Cost</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">100.00</td>
<td class="entry" headers="ID-0000990c__entry__34">Cost</td>
<td class="entry" headers="ID-0000990c__entry__35">The total cost of the
inventory purchased. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Profit</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">4.14</td>
<td class="entry" headers="ID-0000990c__entry__34"><p>Booked Revenue -
Total Cost</p></td>
<td class="entry" headers="ID-0000990c__entry__35"><p>Booked revenue
minus total cost.</p>
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">CPM</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">5.00</td>
<td class="entry" headers="ID-0000990c__entry__34">CPM</td>
<td class="entry" headers="ID-0000990c__entry__35">The cost per one
thousand impressions. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Conversion per
Million</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry" headers="ID-0000990c__entry__33">384.4</td>
<td class="entry" headers="ID-0000990c__entry__34">(total_convs / imps)
x 1,000,000</td>
<td class="entry" headers="ID-0000990c__entry__35">The number of
conversions per million impressions. This value will be displayed in USD
as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Total
conversions</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">5</td>
<td class="entry" headers="ID-0000990c__entry__34">total_convs</td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
post-view and post-click conversions. This value will be displayed in
USD as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Cost eCPA</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">1.1111</td>
<td class="entry" headers="ID-0000990c__entry__34">media_cost /
total_convs</td>
<td class="entry" headers="ID-0000990c__entry__35">The cost per
acquisition/conversion. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Revenue eCPM</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">1.234</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total revenue,
expressed as eCPM. For definitions of eCPM and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Profit eCPM</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">0.4949</td>
<td class="entry" headers="ID-0000990c__entry__34"><p>(Booked Revenue -
Total Cost) / Imps * 1000</p></td>
<td class="entry" headers="ID-0000990c__entry__35">Profit per thousand
impressions.
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Commissions</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">0</td>
<td class="entry" headers="ID-0000990c__entry__34"><p>$0.</p></td>
<td class="entry" headers="ID-0000990c__entry__35">Fees that come out of
the booked revenue. $0.
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Partner Fees</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">Third-party
costs.</td>
<td class="entry" headers="ID-0000990c__entry__35">The total amount of
third-party costs, budgeted using <a href="partner-fees.md"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Total Cost</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">Media Cost + Data
Costs + Partner Fees + Commissions + Serving Fees + Publisher
Revenue</td>
<td class="entry" headers="ID-0000990c__entry__35">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Total Cost eCPM</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">(Total Cost/Imps) *
1,000</td>
<td class="entry" headers="ID-0000990c__entry__35">The total cost per
1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Total Cost eCPC</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">Total
Cost/Clicks</td>
<td class="entry" headers="ID-0000990c__entry__35">The total cost per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Total Cost eCPA</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">Total
Cost/Conversions</td>
<td class="entry" headers="ID-0000990c__entry__35">The total cost per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Profit eCPC</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">(Booked Revenue -
Total Cost)/Clicks</td>
<td class="entry" headers="ID-0000990c__entry__35">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Profit eCPA</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">(Booked Revenue -
Total Cost)/Conversions</td>
<td class="entry" headers="ID-0000990c__entry__35">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Profit Margin</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">123.45</td>
<td class="entry" headers="ID-0000990c__entry__34">(Booked Revenue -
Total Cost)/Booked Revenue</td>
<td class="entry" headers="ID-0000990c__entry__35">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Video Skips</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">10</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Video Starts</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">11</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">25% Video
Complete</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">10</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">50% Video
Complete</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">10</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">75% Video
Complete</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">10</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Video
Completions</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">12</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Videos Served</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">10</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Video Errors</td>
<td class="entry" headers="ID-0000990c__entry__32">int</td>
<td class="entry" headers="ID-0000990c__entry__33">2</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">25.767257</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The revenue per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Cost Per Video
Complete</td>
<td class="entry" headers="ID-0000990c__entry__32">money</td>
<td class="entry" headers="ID-0000990c__entry__33">22.767257</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Video Completion
Rate</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry"
headers="ID-0000990c__entry__33">1.12359550561797%</td>
<td class="entry" headers="ID-0000990c__entry__34">(Video
Completions/Total Impressions) x 100</td>
<td class="entry" headers="ID-0000990c__entry__35">The ratio of video
completions to impressions, expressed as a percentage .</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__31">Video Start Rate</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry"
headers="ID-0000990c__entry__33">1.12359550561797%</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__31">Video Skip Rate</td>
<td class="entry" headers="ID-0000990c__entry__32">double</td>
<td class="entry"
headers="ID-0000990c__entry__33">1.12359550561797%</td>
<td class="entry" headers="ID-0000990c__entry__34"></td>
<td class="entry" headers="ID-0000990c__entry__35">The percentage of
times the user opted to skip the video.</td>
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





## **Related Topics**

- <a href="reporting-guide.md" class="xref">Reporting Guide</a>
- <a href="working-with-segments.md" class="xref">Working with
  Segments</a>
- <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>






