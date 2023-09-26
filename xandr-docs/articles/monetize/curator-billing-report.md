---
Title : Curator Billing Report
Description : The **Curator Billing Report** allows you to manage internal invoicing
for your curation activities. Curators who choose to direct-clear with
---


# Curator Billing Report



The **Curator Billing Report** allows you to manage internal invoicing
for your curation activities. Curators who choose to direct-clear with
sellers can report on the revenue amounts they need to clear with those
sellers.

<div id="curator-billing-report__section-f3978347-0899-49e8-a341-543fe59f4873"
>



Note: This report is only available to
curators.





<div id="curator-billing-report__section-28e54bab-c753-47c4-afdc-e3654543c0a0"
>

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







Note:

Hourly impression data is available and spans 13 full months. For
impressions that are older than 13 months, hourly data is aggregated
into one row with 'YYYY-MM-DD 00:00:00' as the hour ('YYYY-MM-DD' is the
UTC day in which the activity happened). This will make it look as
though all activity happened at midnight.

All daily data that is older than 13 months will be timestamped based on
the UTC time zone.







<div id="curator-billing-report__section-98b9fe98-b4bb-467c-be81-cf70a742a2fe"
>

## Dimensions



Important: The **Filter?** column shows
whether a dimension can be used as a filter as well as being used to
group by.

For all revenue fields, the currency is defined by the
Buying Currency field.







<table
id="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1"
class="entry">Column</th>
<th
id="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2"
class="entry">Filter</th>
<th
id="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Buyer</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">Yes</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">Member
ID of the buyer who bought on the transaction</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Seller</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">Yes</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">Member
ID of the seller where the curated transaction served on</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Publisher</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">Yes</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">Publisher
ID of the seller where the curated transaction served on</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Curator</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">No</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">Member
ID of the curator who facilitated the transaction</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Curated
Deal ID</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">Yes</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">Curated
deal ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Curator
Cleared</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">Yes</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3"><ul>
<li>"0" if Xandr clears net seller revenue with
the seller.</li>
<li>"1" if the curator direct clears net seller revenue with the
seller.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Buying
Currency</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">No</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">The
transaction currency used by the buyer</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__1">Selling
Currency</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__2">No</td>
<td class="entry"
headers="curator-billing-report__table-bb4893a2-28b3-402c-9305-a921603c9b41__entry__3">The
transaction currency used by the seller</td>
</tr>
</tbody>
</table>



<div id="curator-billing-report__section-882ac8ba-a08b-4209-8afe-e38582ad8c65"
>

## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table
id="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1"
class="entry">Column</th>
<th
id="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1">Billable
Imps</td>
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2">The
total number of impressions billed to the client.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1">Net
Seller Revenue</td>
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2">The
amount of net revenue a seller earns, exclusive of seller auction
service fees (SASC) they owe to Xandr.
<strong>Note</strong>: this field is only filled for sellers for which
the curator has a direct clear relationship.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1">Curator
Margin Deduction</td>
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2">The
profit a curator makes on a transaction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1">Curator
Auction Service Deductions</td>
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2">The
amount Xandr charged to the curator as a
deduction at auction time</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__1">Curator
Auction Fees</td>
<td class="entry"
headers="curator-billing-report__table-b5fc0bdf-0162-4cfe-b745-e3aa80820c14__entry__2">The
amount Xandr charged to the curator as a fee at
auction time</td>
</tr>
</tbody>
</table>



<div id="curator-billing-report__section-995717af-6530-4fb2-be2c-e4206d8561f4"
>

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

      
    - <span id="curator-billing-report__d10e107">**Export, send results
      via email**: Run the report in the background and email the
      results to one or more email addresses.
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
6.  <span id="curator-billing-report__d10e136">Click
    Run report to send your report
    request.






