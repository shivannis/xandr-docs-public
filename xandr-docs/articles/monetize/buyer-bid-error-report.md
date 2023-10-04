---
Title : Buyer Bid Error Report
Description : The **Buyer Bid Error Report** helps you gain insight into rejected
demand through a randomly selected set of 5% of the errors logged on the
Xandr platform. Error Count has been multiplied
---


# Buyer Bid Error Report





The **Buyer Bid Error Report** helps you gain insight into rejected
demand through a randomly selected set of 5% of the errors logged on the
Xandr platform. Error Count has been multiplied
by 100 to account for the 5% sampling.

You can use this report to troubleshoot sell-side and buy-side settings
that result in auction errors, thereby blocking spend. The goal is to
help you eliminate the error in the future. You can find information on
the owner, cause and recommended resolution for each error in <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a>.





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

This report's data is retained for 33 days. For more information about
how quickly reporting data is processed, see
<a href="availability-of-reporting-data.html" class="xref">Availability
of Reporting Data</a>.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000957d__entry__1" class="entry">Column</th>
<th id="ID-0000957d__entry__2" class="entry">Filter?</th>
<th id="ID-0000957d__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Error ID</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The specific error
that occurred and was logged in ImpBus (ties to Error Message).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Error Message</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">A generic Error
Message that describes the error that occurred (ties to Error ID)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Ad Profile ID</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes*</td>
<td class="entry" headers="ID-0000957d__entry__3">The Ad Profile ID of
the Seller Member impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Brand</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The brand registered
in the Xandr system and associated with the
creative that is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Creative Category</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">A classification
assigned to both brands and creatives impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Creative Code</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The Creative Code
associated with the Buyer Member that is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Creative Size</td>
<td class="entry" headers="ID-0000957d__entry__2">No</td>
<td class="entry" headers="ID-0000957d__entry__3">The size of the
creative impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Deal</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The ID of the deal
impacted by the error (if Deal ID = 0 no deal was involved).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Language</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The language the
creative was tagged with that is impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Buyer Seat Code</td>
<td class="entry" headers="ID-0000957d__entry__2">No</td>
<td class="entry" headers="ID-0000957d__entry__3">The Custom Buyer Seat
ID (submitted by DSP) which was used to bid on the impression</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Buyer Seat Name</td>
<td class="entry" headers="ID-0000957d__entry__2">No</td>
<td class="entry" headers="ID-0000957d__entry__3">The display name for
the buyer seat code</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Publisher ID</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The ID of the
Publisher who is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__1">Seller Member</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">The Seller Member who
is affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000957d__entry__1">Technical
Attribute</td>
<td class="entry" headers="ID-0000957d__entry__2">Yes</td>
<td class="entry" headers="ID-0000957d__entry__3">Feature of the
creative such as whether it is an image, flash, video, is expandable,
etc. affected by the error.</td>
</tr>
</tbody>
</table>

\* Filter by comma separated IDs only.





## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000957d__entry__46" class="entry">Column</th>
<th id="ID-0000957d__entry__47" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000957d__entry__46">Error Count</td>
<td class="entry" headers="ID-0000957d__entry__47">The amount of errors
logged on the Xandr platform over the time range
selected (a randomly selected set of 5% of the errors multiplied by 100
to account for the sampling).</td>
</tr>
</tbody>
</table>





## How To Run Your Report

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

      
    - <span id="ID-0000957d__d10e107">**Export, send results via
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
6.  <span id="ID-0000957d__d10e136">Click Run
    report to send your report request.






