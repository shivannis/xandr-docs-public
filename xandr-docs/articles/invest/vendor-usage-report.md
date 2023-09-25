---
Title : Vendor Usage Report
Description : The Vendor Usage report is a Member-level report
that provides details about data or platform usage powered by third
party vendors (for example, user segment providers); the costs of that
data or feature usage; and the line items/campaigns where vendor costs
were applicable.
---


# Vendor Usage Report





The Vendor Usage report is a Member-level report
that provides details about data or platform usage powered by third
party vendors (for example, user segment providers); the costs of that
data or feature usage; and the line items/campaigns where vendor costs
were applicable.





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



Data retention period for this report is 60 days.

For more information about how quickly report data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.





## Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="vendor-usage-report__entry__1" class="entry">Column</th>
<th id="vendor-usage-report__entry__2" class="entry">Filter?</th>
<th id="vendor-usage-report__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="vendor-usage-report__entry__1">Advertiser</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the advertiser associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Buying
Currency</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The buying
currency used for the transaction that incurred the third-party vendor
usage costs. Typically, this is the advertiser's preferred
currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__1">Campaign</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the campaign associated with an impression that used third-party
data targeting and incurred these costs.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Campaign Group
Type Id</td>
<td class="entry" headers="vendor-usage-report__entry__2">No</td>
<td class="entry" headers="vendor-usage-report__entry__3">The ID of the
campaign group type which purchased the impression. This dimension is
used in split reporting.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__1">Cost Type</td>
<td class="entry" headers="vendor-usage-report__entry__2">No</td>
<td class="entry" headers="vendor-usage-report__entry__3">The type of
cost incurred towards the data usage provided by the third party
vendors. Allowed values are :
<ul>
<li><strong>Feature Costs</strong>: Costs incurred when using a platform
feature such as Nielsen Digital Ad Ratings (DAR), Nielsen Catalina
Solutions (NCS) and Cross Device​.</li>
<li><strong>Segment Data Costs</strong>: Costs related to the use of
segments in the data marketplace. This metric is applicable when
specific segments are applied in line items and associated pricing is
displayed in the platform.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Country</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name of
the country associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__1">Insertion
Order</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the insertion order associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Line Item</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the line item associated with the impression that used third-party
data targeting.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__1">Split</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the split that purchased the impressions in this data set. Splits
are only supported for augmented line items. For any rows with a
campaign name, the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Targeted
Segment Ids</td>
<td class="entry" headers="vendor-usage-report__entry__2">No</td>
<td class="entry" headers="vendor-usage-report__entry__3">A
comma-separated list of IDs for each of the segments used to target
inventory via the line item/campaign.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__1">Vendor</td>
<td class="entry" headers="vendor-usage-report__entry__2">Yes</td>
<td class="entry" headers="vendor-usage-report__entry__3">The name and
ID of the third party vendor (for example, user segment providers) that
provided the data.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__1">Vendor
Type</td>
<td class="entry" headers="vendor-usage-report__entry__2">No</td>
<td class="entry" headers="vendor-usage-report__entry__3">The type of
vendor providing data. Possible values are Segment Marketplace, Offline
Attribution, Measurement and Cross Device Graph.</td>
</tr>
</tbody>
</table>







## Metrics



<div id="vendor-usage-report__note_g4t_kwb_3sb"
class="note note note_note">

<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="vendor-usage-report__entry__40" class="entry">Column</th>
<th id="vendor-usage-report__entry__41" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__40">Imps</td>
<td class="entry" headers="vendor-usage-report__entry__41">The number of
impressions where a cost was incurred for third-party vendor data. If
multiple third-party vendors were used for a single impression, that
impression will be listed for each third-party vendor.</td>
</tr>
<tr class="even row">
<td class="entry" headers="vendor-usage-report__entry__40">Sales
Tax</td>
<td class="entry" headers="vendor-usage-report__entry__41">The amount of
sales tax collected. This field is only populated when the buyer's
billing address is located in one of the following U.S. states: NY, TX
or NJ. Xandr is required to collect this tax by
the relevant local state regulator.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="vendor-usage-report__entry__40">Vendor
Costs</td>
<td class="entry" headers="vendor-usage-report__entry__41">The total
costs, including but not limited to segment data costs,and feature
costs.</td>
</tr>
</tbody>
</table>






<b>Warning:</b> Cross-device functionality is
available to sellers when running line items that purchase inventory
from the ad exchange using RTB. It's not available when sellers are
running managed campaigns on their own inventory.







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
6.  Click
    Run report to send your report
    request.





## Related Topic



- <a href="network-reporting.md" class="xref">Member Reporting</a>








