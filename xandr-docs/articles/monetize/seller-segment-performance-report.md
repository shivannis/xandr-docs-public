---
Title : Seller Segment Performance Report
Description : The **Seller Segment Performance Report** provides sellers insights into
ms.date: 10/28/2023
how their targeted segments are contributing to the overall performance
of their line items. The report provides data on all targeted segments
---


# Seller Segment Performance Report





The **Seller Segment Performance Report** provides sellers insights into
how their targeted segments are contributing to the overall performance
of their line items. The report provides data on all targeted segments
(includes and excludes) that contributed towards transacted impressions.


This reporting helps sellers in the following ways:

- by providing data on the usage per segment, so they can understand how
  often they used each segment and thus enable them to bill their data
  providers and/or advertisers appropriately
- by providing data of performance per segment, so they can analyze
  which segments are performing well or not well and optimize
  appropriately
- facilitating data clearing, so that instead of them being responsible
  for billing their data providers each month,
  Xandr can do it for them.



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



This report's data is retained for 100 days. The time granularity of the
data is hourly.

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
<th id="ID-0000990c__entry__1" class="entry">Column</th>
<th id="ID-0000990c__entry__2" class="entry">Filter?</th>
<th id="ID-0000990c__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Publisher</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
publisher on whose inventory this impression occurred, in the format
"12up.com (1825156)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Seller</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of
seller of an impression, in the format "ABC Owned TV Stations
(8164)".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Deal</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
deal associated with the transaction for the impression., in the format
"5StarsCine (165888)"</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Targeting Type</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The targeting type,
whether its "Inclusion" or "Exclusion"</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Segment Owner</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of
owner of a segment used in targeting, in the format "152 Media LLC
(1939)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Curator Member</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The deal curator name
and ID, in the format "OMD - Renault Group (CURATOR) (12148)".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Bidder</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
bidder associated with the impression, in the format "123.com
(99000)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Buyer Member</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The name and ID of the
buyer who buys the impression, in the format "Accenture LLP
(11100)"</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Media Type</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The media type
associated with the creative that served on an impression. For example,
audio, banner, native, interstitial, video, etc.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Supply Type</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The media type
associated with the creative that served on an impression.. For example,
Web, Mobile Web and App, Mobile App etc.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Device Type</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The type of device on
which the impression is served. For example, desktop &amp; laptop,
mobile phone, tablets etc.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Country Code</td>
<td class="entry" headers="ID-0000990c__entry__2">No</td>
<td class="entry" headers="ID-0000990c__entry__3">The country code in
which the impression took place.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Country Name</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The country name in
which the impression took place.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Sales Channel</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The sales channels for
the impression. For example, Managed, Open Exchange, Curated, Deals,
Programmatic Guaranteed, etc.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__1">Line Item</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The line item
associated with the impression, in the format "Kansas City Winter
Commuters (314)".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__1">Segment</td>
<td class="entry" headers="ID-0000990c__entry__2">Yes</td>
<td class="entry" headers="ID-0000990c__entry__3">The user segment
associated with the impression in the format "Submitted application
(220)".</td>
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
<th id="ID-0000990c__entry__52" class="entry">Column</th>
<th id="ID-0000990c__entry__53" class="entry">Type</th>
<th id="ID-0000990c__entry__54" class="entry">Example</th>
<th id="ID-0000990c__entry__55" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted
Impressions</td>
<td class="entry" headers="ID-0000990c__entry__53">int</td>
<td class="entry" headers="ID-0000990c__entry__54">12</td>
<td class="entry" headers="ID-0000990c__entry__55">Aggregated
impressions for a segment</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Clicks</td>
<td class="entry" headers="ID-0000990c__entry__53">int</td>
<td class="entry" headers="ID-0000990c__entry__54">5</td>
<td class="entry" headers="ID-0000990c__entry__55">Aggregated clicks for
a segment</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted
Conversions</td>
<td class="entry" headers="ID-0000990c__entry__53">int</td>
<td class="entry" headers="ID-0000990c__entry__54">2</td>
<td class="entry" headers="ID-0000990c__entry__55">Targeted conversions
of a segment</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted View
Measured Impressions</td>
<td class="entry" headers="ID-0000990c__entry__53">int</td>
<td class="entry" headers="ID-0000990c__entry__54">12</td>
<td class="entry" headers="ID-0000990c__entry__55">Aggregated view
measurable impressions for a segment</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Viewable
Impressions</td>
<td class="entry" headers="ID-0000990c__entry__53">int</td>
<td class="entry" headers="ID-0000990c__entry__54">10</td>
<td class="entry" headers="ID-0000990c__entry__55">Aggregate viewable
impressions for a segment</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Revenue</td>
<td class="entry" headers="ID-0000990c__entry__53">money</td>
<td class="entry" headers="ID-0000990c__entry__54">123.45</td>
<td class="entry" headers="ID-0000990c__entry__55">Targeted revenue of
the segment which is sum of booked revenue and seller revenue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Revenue
eCPM</td>
<td class="entry" headers="ID-0000990c__entry__53">money</td>
<td class="entry" headers="ID-0000990c__entry__54">1.5</td>
<td class="entry" headers="ID-0000990c__entry__55">The targeted revenue,
expressed as eCPM. For definitions of eCPM and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Revenue
eCPC</td>
<td class="entry" headers="ID-0000990c__entry__53">money</td>
<td class="entry" headers="ID-0000990c__entry__54">2.2</td>
<td class="entry" headers="ID-0000990c__entry__55">The targeted revenue,
expressed as eCPC. For definitions of eCPC and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000990c__entry__52">Targeted Revenue
eCPA</td>
<td class="entry" headers="ID-0000990c__entry__53">money</td>
<td class="entry" headers="ID-0000990c__entry__54">1.1</td>
<td class="entry" headers="ID-0000990c__entry__55">The targeted revenue,
expressed as eCPA. For definitions of eCPA and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>.</td>
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






