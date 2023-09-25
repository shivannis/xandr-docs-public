---
Title : Buyer Untargeted Segment Performance Report
Description : This report provides buyers with segment performance across multiple ad
campaigns and advertisers over untargeted segments. This allows you to:
---


# Buyer Untargeted Segment Performance Report





This report provides buyers with segment performance across multiple ad
campaigns and advertisers over untargeted segments. This allows you to:

- Understand the performance of individual untargeted segments across
  your account
- Filter for specific conversion pixels to further identify how these
  segments contribute to your overall buying strategy

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



Dimensions



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
<td class="entry" headers="ID-0000990c__entry__1">Campaign Code</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The ID associated with
a campaign by Xandr platform or by user as an external code</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Split</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Segment</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The user segment
associated with the impression in the format "Submitted application
(220)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Buying Currency</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the monetary metrics to be displayed in the buying
currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Is Targeted</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">Whether a user segment
is targeted or not by advertiser</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Is Advertiser
Segment</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">Whether a target
segment is an advertiser segment</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Campaign Group Type
Id</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The ID for a campaign
group type. For example, Buy direct/third-party inventory</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Segment Owner Member
Id</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The member ID of the
user segment owner</td>
</tr>
</tbody>
</table>



Reports automatically group by all selected dimensions.



<b>Note:</b> In addition, you can also filter
on:

- one or more conversion pixels using the **Conversion Pixel** filter.
- a particular number of impressions using the **Minimum Impressions**
  filter.



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000990c__entry__40" class="entry">Column</th>
<th id="ID-0000990c__entry__41" class="entry">Type</th>
<th id="ID-0000990c__entry__42" class="entry">Example</th>
<th id="ID-0000990c__entry__43" class="entry">Formula</th>
<th id="ID-0000990c__entry__44" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Imps</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">34534</td>
<td class="entry" headers="ID-0000990c__entry__43">Imps</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Clicks</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">345</td>
<td class="entry" headers="ID-0000990c__entry__43">Clicks</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">CTR</td>
<td class="entry" headers="ID-0000990c__entry__41">double</td>
<td class="entry" headers="ID-0000990c__entry__42">0.00237</td>
<td class="entry" headers="ID-0000990c__entry__43">(Clicks / Imps) x
100</td>
<td class="entry" headers="ID-0000990c__entry__44">The rate of clicks to
impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Total
conversions</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">5</td>
<td class="entry" headers="ID-0000990c__entry__43">total_convs</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
post-view and post-click conversions. This value will be displayed in
USD as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Conversion Rate</td>
<td class="entry" headers="ID-0000990c__entry__41">double</td>
<td class="entry"
headers="ID-0000990c__entry__42">0.000221877080097626</td>
<td class="entry" headers="ID-0000990c__entry__43">Total Convs /
Imps</td>
<td class="entry" headers="ID-0000990c__entry__44">The ratio of
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Conversion per
Million</td>
<td class="entry" headers="ID-0000990c__entry__41">double</td>
<td class="entry" headers="ID-0000990c__entry__42">384.4</td>
<td class="entry" headers="ID-0000990c__entry__43">(total_convs / imps)
x 1,000,000</td>
<td class="entry" headers="ID-0000990c__entry__44">The number of
conversions per million impressions. This value will be displayed in USD
as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Post View
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">15</td>
<td class="entry" headers="ID-0000990c__entry__43">Post View
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Post View Conversion
Rate</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">15</td>
<td class="entry" headers="ID-0000990c__entry__43">Post View Convs</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Post View
Revenue</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">450.00</td>
<td class="entry" headers="ID-0000990c__entry__43">Post View
Revenue</td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue
booked through post-view conversions</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Post Click
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">19</td>
<td class="entry" headers="ID-0000990c__entry__43">Post Click Convs</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Post Click Conversion
Rate</td>
<td class="entry" headers="ID-0000990c__entry__41">int</td>
<td class="entry" headers="ID-0000990c__entry__42">19</td>
<td class="entry" headers="ID-0000990c__entry__43">Post Click Convs</td>
<td class="entry" headers="ID-0000990c__entry__44">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Post Click
Revenue</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">450.00</td>
<td class="entry" headers="ID-0000990c__entry__43">Post Click
Revenue</td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue
booked through post-click conversions</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Booked Revenue</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">450.00</td>
<td class="entry" headers="ID-0000990c__entry__43">Booked Revenue</td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue
booked through direct advertisers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Revenue eCPM</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">1.234</td>
<td class="entry" headers="ID-0000990c__entry__43"></td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue,
expressed as eCPM. For definitions of eCPM and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Revenue eCPC</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">1.234</td>
<td class="entry" headers="ID-0000990c__entry__43"></td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue,
expressed as eCPC. For definitions of eCPC and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Revenue eCPA</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">1.234</td>
<td class="entry" headers="ID-0000990c__entry__43"></td>
<td class="entry" headers="ID-0000990c__entry__44">The total revenue,
expressed as eCPA. For definitions of eCPA and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Media Cost</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">100.00</td>
<td class="entry" headers="ID-0000990c__entry__43">Cost</td>
<td class="entry" headers="ID-0000990c__entry__44">The total cost of the
inventory purchased. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Profit</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">4.14</td>
<td class="entry" headers="ID-0000990c__entry__43"><strong>During the
transition period:</strong> Booked Revenue - Media Cost
<p><strong>After the transition period:</strong> Booked Revenue - Total
Cost</p></td>
<td class="entry" headers="ID-0000990c__entry__44"><strong>During the
transition period:</strong> Booked revenue minus media cost.
<p><strong>After the transition period:</strong> Booked revenue minus
total cost.</p>
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">CPM</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">5.00</td>
<td class="entry" headers="ID-0000990c__entry__43">CPM</td>
<td class="entry" headers="ID-0000990c__entry__44">The cost per one
thousand impressions. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Cost eCPA</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">1.1111</td>
<td class="entry" headers="ID-0000990c__entry__43">media_cost /
total_convs</td>
<td class="entry" headers="ID-0000990c__entry__44">The cost per
acquisition/conversion. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Cost eCPC</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">123.45</td>
<td class="entry" headers="ID-0000990c__entry__43">Cost/Clicks</td>
<td class="entry" headers="ID-0000990c__entry__44">The cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__40">Profit eCPM</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">0.4949</td>
<td class="entry" headers="ID-0000990c__entry__43"><strong>During the
transition period:</strong> (Booked Revenue - Media Cost) / Imps * 1000
<p><strong>After the transition period:</strong> (Booked Revenue - Total
Cost) / Imps * 1000</p></td>
<td class="entry" headers="ID-0000990c__entry__44">Profit per thousand
impressions.
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__40">Commissions</td>
<td class="entry" headers="ID-0000990c__entry__41">money</td>
<td class="entry" headers="ID-0000990c__entry__42">0</td>
<td class="entry" headers="ID-0000990c__entry__43"><strong>During the
transition period:</strong> Commissions + equivalent partner_fees.
<p><strong>After the transition period:</strong> $0. Commissions created
on ALIs prior to this date will be automatically migrated to <span
class="ph uicontrol">partner_fees. Previous data will not be
impacted.</p></td>
<td class="entry" headers="ID-0000990c__entry__44">Fees that come out of
the booked revenue.
<p><strong>During the transition period:</strong> Commissions +
equivalent partner fees.</p>
<p><strong>After the transition period:</strong>$0. Commissions created
on ALIs prior to this date will be automatically migrated to partner
fees. Previous data will not be impacted.</p>
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
</tbody>
</table>



To Run Your Report

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

      
    - <span id="ID-0000990c__d10e107">**Export, send results via
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
6.  <span id="ID-0000990c__d10e136">Click Run
    report to send your report request.





Related Topics

- <a href="reporting-guide.md" class="xref">Reporting Guide</a>
- <a href="working-with-segments.md" class="xref">Working with
  Segments</a>
- <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>






