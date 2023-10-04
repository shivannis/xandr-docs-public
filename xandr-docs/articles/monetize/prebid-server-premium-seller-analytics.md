---
Title : Prebid Server Premium Seller Analytics Report
Description : The Prebid Server Premium Seller Analytics Report contains performance
information on configured Prebid Server Premium (PSP) demand partners.
---


# Prebid Server Premium Seller Analytics Report



The Prebid Server Premium Seller Analytics Report contains performance
information on configured Prebid Server Premium (PSP) demand partners.



Using this report, you can:

- Track revenue by heading bidder demand partner, publisher, or
  geographical region.
- Track lift on inventory you've opened up to header bidding demand.
- Monitor the health and efficiency of your Prebid Server Premium
  partners and placements.

For information on other downloadable reports, see
<a href="reporting-guide.html" class="xref">Reporting Guide</a>. For
information on accessing reporting data via API, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/prebid-server-premium-seller-analytics.html"
class="xref" target="_blank">Prebid Server Premium Seller Analytics</a>.





## Time Frame

**Time Ranges**



Time ranges define the time period of the data extracted for the report.
The following is a list of time ranges available for this report.

- Custom
- Last Hour
- Today
- Last 48 Hours
- Yesterday
- Last 7 Days
- Last Month
- Month to Date
- Month to Yesterday



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



**Time Zone**

Select the time zone for the report.





## Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000517b__entry__1" class="entry">Column</th>
<th id="ID-0000517b__entry__2" class="entry">Filter?</th>
<th id="ID-0000517b__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__1">Seller</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">No</td>
<td class="entry" headers="ID-0000517b__entry__3">The name of the seller
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__1">Publisher</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The publisher on whose
inventory the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__1">Placement Group</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The name of the
placement group associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__1">Tag</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The tag associated
with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__1">Size</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The size of the
placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__1">Country</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The country where the
impression was served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__1">Header Bidding Demand
Partner</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">No</td>
<td class="entry" headers="ID-0000517b__entry__3">The demand partner
associated with the placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__1">Impression Type</td>
<td class="entry align-center" headers="ID-0000517b__entry__2">Yes</td>
<td class="entry" headers="ID-0000517b__entry__3">The type of impression
served. For details, see <a
href="prebid-server-premium-seller-analytics.html#ID-0000517b__ID-00005293"
class="xref">Impression Types</a>.</td>
</tr>
</tbody>
</table>







## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000517b__entry__28" class="entry">Column</th>
<th id="ID-0000517b__entry__29" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__28">Imps</td>
<td class="entry" headers="ID-0000517b__entry__29">The number of
impressions on the placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__28">Viewable Imps</td>
<td class="entry" headers="ID-0000517b__entry__29">The number of
viewable impressions for the placement.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__28">View-Measured
Imps</td>
<td class="entry" headers="ID-0000517b__entry__29">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__28">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-0000517b__entry__29">The percentage of
impressions measured for viewability out of the total number of
impressions (View Measured Imps / Imps).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__28">Viewability Rate</td>
<td class="entry" headers="ID-0000517b__entry__29">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability (Viewed Imps / View Measured Imps).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__entry__28">Seller eCPM</td>
<td class="entry" headers="ID-0000517b__entry__29">The seller revenue
represented in eCPM.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__entry__28">Seller Revenue</td>
<td class="entry" headers="ID-0000517b__entry__29">The seller revenue
represented as a dollar amount.</td>
</tr>
</tbody>
</table>





<div id="ID-0000517b__ID-00005293" >

## Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000517b__ID-00005293__entry__1" class="entry">Value</th>
<th id="ID-0000517b__ID-00005293__entry__2" class="entry">Name</th>
<th id="ID-0000517b__ID-00005293__entry__3"
class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">1</td>
<td class="entry"
headers="ID-0000517b__ID-00005293__entry__2">Blank</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">No
creative served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">2</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">PSA</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">A public
service announcement served because no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">3</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">Default
Error</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">A default
creative served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">4</td>
<td class="entry"
headers="ID-0000517b__ID-00005293__entry__2">Default</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">A default
creative served because no line item or campaign
bid or no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">5</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">Kept</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">One of
your managed advertisers served a creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">6</td>
<td class="entry"
headers="ID-0000517b__ID-00005293__entry__2">Resold</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">The
impression was sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">7</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">RTB</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">Your
creative served on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">8</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">PSA
Error</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">A public
service announcement served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">9</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">External
Impression</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">An
impression from an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000517b__ID-00005293__entry__1">10</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__2">External
Click</td>
<td class="entry" headers="ID-0000517b__ID-00005293__entry__3">A click
from a click tracker.</td>
</tr>
</tbody>
</table>







## How To Run Your Report

Follow these steps to run your report.

<div id="ID-0000517b__p-9308555c-68cf-4146-80c8-2c224b07fd9f" >

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Premium Seller
        Analytics
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

      
    - <span id="ID-0000517b__ITPL0000">**Export, send results via
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
6.  <span id="ID-0000517b__step-6">Click Run
    report to send your report request.








