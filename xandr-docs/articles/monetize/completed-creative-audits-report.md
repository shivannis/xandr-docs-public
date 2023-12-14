---
Title : Completed Creative Audits Report
Description : The Completed Creative Audits Report provides insight into the number of
ms.date: 10/28/2023
creatives that have completed the Xandr audit
process, and the associated charges. Use this report to find out:
---


# Completed Creative Audits Report





The Completed Creative Audits Report provides insight into the number of
creatives that have completed the Xandr audit
process, and the associated charges. Use this report to find out:

- The number of creatives that have been audited over a given time frame

- The number of creatives that have been audited for a specific
  advertiser

- Which of your creatives have completed audit

- The amount you are being charged for creative audits

- The number of standard versus priority creative audits you have
  completed

  See below for instructions on retrieving this report.

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
<th id="ID-0000ba20__entry__1" class="entry">Column</th>
<th id="ID-0000ba20__entry__2" class="entry">Filter?</th>
<th id="ID-0000ba20__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000ba20__entry__1">Creative</td>
<td class="entry" headers="ID-0000ba20__entry__2">Yes</td>
<td class="entry" headers="ID-0000ba20__entry__3">The name of the
creative that was audited.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000ba20__entry__1">Advertiser</td>
<td class="entry" headers="ID-0000ba20__entry__2">Yes</td>
<td class="entry" headers="ID-0000ba20__entry__3">The name and ID of the
advertiser associated with the creative that was audited.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000ba20__entry__1">Audit Reason</td>
<td class="entry" headers="ID-0000ba20__entry__2">Yes</td>
<td class="entry" headers="ID-0000ba20__entry__3">The reason the
creative is being audited. Possible values: Initial Audit or
Reaudit.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000ba20__entry__1">Audit Type</td>
<td class="entry" headers="ID-0000ba20__entry__2">Yes</td>
<td class="entry" headers="ID-0000ba20__entry__3">The type of audit
being conducted. Possible values: Standard or Priority.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000ba20__entry__1">Date of Audit</td>
<td class="entry" headers="ID-0000ba20__entry__2">No</td>
<td class="entry" headers="ID-0000ba20__entry__3">The date on which the
creative was audited.</td>
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
<th id="ID-0000ba20__entry__19" class="entry">Column</th>
<th id="ID-0000ba20__entry__20" class="entry">Example</th>
<th id="ID-0000ba20__entry__21" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000ba20__entry__19">Audits completed</td>
<td class="entry" headers="ID-0000ba20__entry__20">10</td>
<td class="entry" headers="ID-0000ba20__entry__21">The number of audits
completed in the grouping specified.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000ba20__entry__19">Audit Fees</td>
<td class="entry" headers="ID-0000ba20__entry__20">$10.00</td>
<td class="entry" headers="ID-0000ba20__entry__21">The total fees for
audits in the grouping specified. This is the number of creatives audits
performed multiplied by the audit fee.</td>
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

      
    - <span id="ID-0000ba20__d10e107">**Export, send results via
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
6.  <span id="ID-0000ba20__d10e136">Click Run
    report to send your report request.





Related Topic

- <a href="network-reporting.md" class="xref">Network Reporting</a>






