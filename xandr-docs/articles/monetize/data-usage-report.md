---
Title : Data Usage Report
Description : The Data Usage report gives details related to your usage of data
provided by third parties (e.g., user segment providers), the costs of
---


# Data Usage Report





The Data Usage report gives details related to your usage of data
provided by third parties (e.g., user segment providers), the costs of
that data usage and campaigns in which that data was used to target
users.



Note: This report will only return data
for buyers in the data marketplace.



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



For more information about how quickly report data is processed, see
<a href="availability-of-reporting-data.html" class="xref">Availability
of Reporting Data</a>.

Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001e6f__entry__1" class="entry">Column</th>
<th id="ID-00001e6f__entry__2" class="entry">Filter?</th>
<th id="ID-00001e6f__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__1">Data Provider</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The name and ID of the
provider associated with the third-party costs.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__1">Advertiser</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The advertiser that
used the third-party data and incurred these costs.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The insertion order
that used the third-party data and incurred these costs.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__1">Line Items</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The line item that
used the third-party data and incurred these costs.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__1">Buying Currency</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The buying currency
used for the transaction that incurred the third-party data usage
costs.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__1">Campaign</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The campaign that used
the third-party data and incurred these costs. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__1">Split</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__1">Country</td>
<td class="entry" headers="ID-00001e6f__entry__2">Yes</td>
<td class="entry" headers="ID-00001e6f__entry__3">The country that the
impression is from.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__1">Targeted Segment
IDs</td>
<td class="entry" headers="ID-00001e6f__entry__2">No</td>
<td class="entry" headers="ID-00001e6f__entry__3">The IDs of the data
segments that were targeting via the line item/campaign.</td>
</tr>
</tbody>
</table>





Note: You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.







Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001e6f__entry__31" class="entry">Column</th>
<th id="ID-00001e6f__entry__32" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__31">Imps</td>
<td class="entry" headers="ID-00001e6f__entry__32">The number of
impressions where a cost was incurred due to use of a third-party's
data. If multiple third-party providers were used for a single
impression, that impression will be listed for each third-party
provider.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__31">Data Costs</td>
<td class="entry" headers="ID-00001e6f__entry__32">The total costs
attributed to the use of third-party data.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e6f__entry__31">Sales Tax</td>
<td class="entry" headers="ID-00001e6f__entry__32">The amount of sales
tax collected. This field is only populated when the Buyer's billing
address is located in one of the following U.S. states: NY, TX or NJ.
Xandr is required (by the relevant local state
regulator) to collect this tax.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e6f__entry__31">Data Type</td>
<td class="entry" headers="ID-00001e6f__entry__32">The two choices are
Segment or Cross Device. See <a
href="cross-device-targeting-and-measurement.html" class="xref"
title="Cross-device targeting and measurement, which can be enabled at the line item level, ties together events or actions for a unique individual that occur on different devices.">Cross-Device
Targeting and Measurement</a> for more information.</td>
</tr>
</tbody>
</table>



<div id="ID-00001e6f__note_dpx_myw_brb"
class="note warning note_warning">

Warning: Cross-device functionality is
available to sellers when running line items that purchase inventory
from the ad exchange using RTB. It's not available when sellers are
running managed campaigns on their own inventory.







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

      
    - <span id="ID-00001e6f__d10e107">**Export, send results via
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
6.  <span id="ID-00001e6f__d10e136">Click Run
    report to send your report request.





Related Topic

- <a href="network-reporting.html" class="xref">Network Reporting</a>






