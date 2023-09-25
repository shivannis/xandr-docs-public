---
Title : Member Site Domain Performance Report
Description : This report is designed to show you performance and optimization data
broken down by domain or mobile app across all of your advertisers.
---


# Member Site Domain Performance Report




This report is designed to show you performance and optimization data
broken down by domain or mobile app across all of your advertisers.

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



For more information about how quickly reporting data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.

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
<th id="ID-0000a055__entry__1" class="entry">Column</th>
<th id="ID-0000a055__entry__2" class="entry">Filter?</th>
<th id="ID-0000a055__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Site Domain</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The domain where the
impression occurred. For mobile applications, this can be the URL of the
app's location in the app store. There are two additional values that
may appear in place of a domain, specifically: <code
class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Mobile
Application</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The Apple App Store or
Google Play name and ID of the mobile application where the impression
occurred, for example, <code
class="ph codeph">"Angry Birds (343200656)"</code> or <code
class="ph codeph">"Angry Birds (com.rovio.angrybirds)"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Top-level
Category</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
top-level content category associated with the domain, for example,
<code class="ph codeph">"Shopping (19821)"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Second-level
Category</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
second-level content category associated with the domain, for example,
<code class="ph codeph">"Shoes (20129)"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Advertiser</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
advertiser who purchased the impressions in this data set.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
insertion order whose line item purchased the
impressions in this data set.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Line Item</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
line item that purchased the impressions in this data set.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Campaign</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
campaign that purchased the impressions in this data set. (Does not
apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Split</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Deal</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
deal associated with the transaction for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Remarketing Type</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">Indicator of whether
this is a remarketing campaign.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Age</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The age of the user
associated with the impression. For impressions older than 100 days, the
age will be "unknown".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Gender</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The gender of the
user. For impressions older than 100 days, the gender will be
"unknown".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Fold Position</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The fold position of
the impression (i.e., where on the page the placement is located).

Possible values for impressions:
<ul>
<li>unknown</li>
<li>above</li>
<li>below</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Operating System</td>
<td class="entry" headers="ID-0000a055__entry__2">No</td>
<td class="entry" headers="ID-0000a055__entry__3">The name and ID of the
operating system of the device where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Seller Name</td>
<td class="entry" headers="ID-0000a055__entry__2">No</td>
<td class="entry" headers="ID-0000a055__entry__3">The name of the seller
member associated with the site domain.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Seller ID</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The ID of the seller
member associated with the site domain.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Supply Type</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values are <code
class="ph codeph">"web"</code>, <code
class="ph codeph">"mobile_app"</code>, and <code
class="ph codeph">"mobile_web"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__1">Pixel ID</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The unique
identification number of the conversion pixel.
<div class="note note_note">
<b>Note:</b> This dimension will return a
maximum of 10 conversion pixels. Also, you can filter by no more than 10
conversion pixels. Although Pixel ID groupable, we do not recommend that
you group by this dimension since doing so will cause conversion events
to then be shown in separate rows from impression and click events. We
generally assume you want to view all of these events in a single row so
as to be able to retrieve accurate and aggregated values for conversion
rate and cost-per-conversion calculations. As a result, we instead
recommend that you filter by Pixel ID so you can retrieve conversion
counts and related metrics for your most relevant pixel IDs.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__1">Buying Currency</td>
<td class="entry" headers="ID-0000a055__entry__2">Yes</td>
<td class="entry" headers="ID-0000a055__entry__3">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the monetary metrics to be displayed in the buying
currency. This dimension is available only when Currency 2.0 is
disabled.</td>
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
<th id="ID-0000a055__entry__64" class="entry">Column</th>
<th id="ID-0000a055__entry__65" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Imps</td>
<td class="entry" headers="ID-0000a055__entry__65">The total number of
impressions served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Clicks</td>
<td class="entry" headers="ID-0000a055__entry__65">The total number of
clicks recorded.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">CTR</td>
<td class="entry" headers="ID-0000a055__entry__65">The click-through
rate; that is, the ratio of clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Conversion Rate</td>
<td class="entry" headers="ID-0000a055__entry__65">The ratio of
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Conversions Per
Million</td>
<td class="entry" headers="ID-0000a055__entry__65">The number of
conversions per million impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Booked Revenue</td>
<td class="entry" headers="ID-0000a055__entry__65">The revenue received
from the advertiser. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Post View Convs</td>
<td class="entry" headers="ID-0000a055__entry__65">The total number of
post-view conversions recorded. For more information about how we record
post-view conversions, see <a href="conversion-attribution.md"
class="xref">Conversion Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Post Click Convs</td>
<td class="entry" headers="ID-0000a055__entry__65">The total number of
post-click conversions recorded. For more information about how we
record post-click conversions, see <a href="conversion-attribution.md"
class="xref">Conversion Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Media Cost</td>
<td class="entry" headers="ID-0000a055__entry__65">The cost to the
buying member for this inventory. This value will be displayed in USD as
well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Cost eCPC</td>
<td class="entry" headers="ID-0000a055__entry__65">The cost per click.
This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Cost eCPA</td>
<td class="entry" headers="ID-0000a055__entry__65">The cost per
acquisition/conversion. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Profit</td>
<td class="entry" headers="ID-0000a055__entry__65">Booked revenue minus
total cost.
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Profit eCPM</td>
<td class="entry" headers="ID-0000a055__entry__65"><p>The profit
(defined as booked revenue minus total cost) per 1,000 imps.</p>
<p>This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">CPM</td>
<td class="entry" headers="ID-0000a055__entry__65">The cost per thousand
impressions. This value will be displayed in USD as well as potentially
the Buying Currency (if you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Post View Conversion
Rate</td>
<td class="entry" headers="ID-0000a055__entry__65">The ratio of
post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Post Click Conversion
Rate</td>
<td class="entry" headers="ID-0000a055__entry__65">The ratio of
post-click conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Total Cost</td>
<td class="entry" headers="ID-0000a055__entry__65">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Total Cost eCPM</td>
<td class="entry" headers="ID-0000a055__entry__65">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Total Cost eCPC</td>
<td class="entry" headers="ID-0000a055__entry__65">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Total Cost eCPA</td>
<td class="entry" headers="ID-0000a055__entry__65">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Profit eCPC</td>
<td class="entry" headers="ID-0000a055__entry__65">Profit per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a055__entry__64">Profit eCPA</td>
<td class="entry" headers="ID-0000a055__entry__65">Profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a055__entry__64">Profit Margin</td>
<td class="entry" headers="ID-0000a055__entry__65">Buyer profit
margin.</td>
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





Related Topics

- <a href="reporting-guide.html" class="xref">Reporting Guide</a>
- <a href="network-reporting.html" class="xref">Member Reporting</a>
- <a href="conversion-attribution.html" class="xref">Conversion
  Attribution</a>
- <a href="availability-of-reporting-data.html" class="xref">Availability
  of Reporting Data</a>






