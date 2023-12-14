---
Title : Universal Content Categories Report
Description : The **Universal Content Categories Report** lets you research and break
ms.date: 10/28/2023
down the amount of inventory available from sellers across universal
content categories and domains. You can also find out what creative
---


# Universal Content Categories Report





The **Universal Content Categories Report** lets you research and break
down the amount of inventory available from sellers across universal
content categories and domains. You can also find out what creative
sizes were shown in what countries. Sample use cases include:

- Buyers who want to know the volume available for a given universal
  content category
- Buyers who want to see how many impressions are available at the
  intersection of a universal content category and seller
- Buyers who want to know the volume available at the intersection of
  universal content category and country in a given creative size

To access this report, go to
Network
\> Inventory \>
Reporting and select
Universal Content Categories from
the Type dropdown. For more
information on the available data fields and their definitions, see <a
href="universal-content-categories-report.md#ID-00005fa3__ID-00005fee"
class="xref">Dimensions</a> and <a
href="universal-content-categories-report.md#ID-00005fa3__ID-0000606e"
class="xref">Metrics</a> below.

For instructions on running the report, see <a
href="universal-content-categories-report.md#ID-00005fa3__ID-0000609c"
class="xref">To Run Your Report</a>.

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



This report's data is retained for 60 days.

Dimensions



<b>Important:</b> The
**Filter?** column shows whether a
dimension can be used as a filter as well as being used to group by.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005fa3__entry__1" class="entry">Column</th>
<th id="ID-00005fa3__entry__2" class="entry">Type</th>
<th id="ID-00005fa3__entry__3" class="entry">Filter?</th>
<th id="ID-00005fa3__entry__4" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005fa3__entry__1">Top-level
category</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">Yes</td>
<td class="entry" headers="ID-00005fa3__entry__4">The top-level
universal content category associated with the inventory where these
impressions occurred. For example, <code
class="ph codeph">"Business &amp; Industry"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005fa3__entry__1">Seller</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">Yes</td>
<td class="entry" headers="ID-00005fa3__entry__4">The seller on whose
inventory these impressions occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005fa3__entry__1">Country</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">Yes</td>
<td class="entry" headers="ID-00005fa3__entry__4">The country where the
user was located for the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005fa3__entry__1">Size</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">Yes</td>
<td class="entry" headers="ID-00005fa3__entry__4">The size of the
creative used in the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005fa3__entry__1">Minimum
Impressions</td>
<td class="entry" headers="ID-00005fa3__entry__2">int</td>
<td class="entry" headers="ID-00005fa3__entry__3">Yes</td>
<td class="entry" headers="ID-00005fa3__entry__4">The minimum number of
impressions you'd like to filter by. For example, you may want to see
only impressions and uniques from members whose volume exceeds 100,000
impressions over the selected time range.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005fa3__entry__1">Second-level
category</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">No</td>
<td class="entry" headers="ID-00005fa3__entry__4">The second-level
universal content category associated with the inventory where these
impressions occurred. For example, <code
class="ph codeph">"Aerospace &amp; Defense"</code>, which is filed under
<code class="ph codeph">"Business &amp; Industry"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005fa3__entry__1">Domain</td>
<td class="entry" headers="ID-00005fa3__entry__2">string</td>
<td class="entry" headers="ID-00005fa3__entry__3">No</td>
<td class="entry" headers="ID-00005fa3__entry__4">The URL of the domain
where the impression took place. Not all sellers expose their domains in
reporting. Traffic from sellers who have elected not to expose domains
will be reported as <code class="ph codeph">"Undisclosed"</code>.</td>
</tr>
</tbody>
</table>





<b>Note:</b> You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005fa3__entry__33" class="entry">Column</th>
<th id="ID-00005fa3__entry__34" class="entry">Type</th>
<th id="ID-00005fa3__entry__35" class="entry">Formula</th>
<th id="ID-00005fa3__entry__36" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005fa3__entry__33">Platform-Audited
Imps</td>
<td class="entry" headers="ID-00005fa3__entry__34">int</td>
<td class="entry" headers="ID-00005fa3__entry__35">Platform-Reviewed
Imps</td>
<td class="entry" headers="ID-00005fa3__entry__36">The number of
platform-reviewed impressions that took place on this inventory during
the selected time range.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005fa3__entry__33">Seller-Audited
Imps</td>
<td class="entry" headers="ID-00005fa3__entry__34">int</td>
<td class="entry" headers="ID-00005fa3__entry__35">Seller-Reviewed
Imps</td>
<td id="ID-00005fa3__ID-0000609c" class="entry"
headers="ID-00005fa3__entry__36">The number of seller-reviewed
impressions that took place on this inventory during the selected time
range.</td>
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

      
    - <span id="ID-00005fa3__d10e107">**Export, send results via
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
6.  <span id="ID-00005fa3__d10e136">Click Run
    report to send your report request.





Related Topic

- <a href="reporting-guide.md" class="xref">Reporting Guide</a>






