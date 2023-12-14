---
Title : Network Video Mediation Demand Report
Description : A mediation bid allows you to specify how much you expect the mediated
ms.date: 10/28/2023
network will pay for a video impression on a particular placement,
thereby allowing the mediated network to compete for the impression
against RTB demand in the Xandr auction. Video
---


# Network Video Mediation Demand Report





A mediation bid allows you to specify how much you expect the mediated
network will pay for a video impression on a particular placement,
thereby allowing the mediated network to compete for the impression
against RTB demand in the Xandr auction. Video
Mediation Demand report can be used to view video mediation demand
metrics across multiple buyers and publishers.

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



Data Retention Period

Data in this report is retained for 45 days.

Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b8f__entry__1" class="entry">Column</th>
<th id="ID-00002b8f__entry__2" class="entry">Filter?</th>
<th id="ID-00002b8f__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Buyer</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The buyer of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Publisher</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The publisher on whose
inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Placement Group</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The placement group
(simply a collection of placements) which includes the placement through
which this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Mediated Bid</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The name and ID of the
mediated bid under a mediated network.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Placement</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The placement through
which this impression occurred.

<b>Note:</b> For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Call Type</td>
<td class="entry" headers="ID-00002b8f__entry__2">No</td>
<td class="entry" headers="ID-00002b8f__entry__3">The type of handler
that was used to send the impression to Xandr
(e.g., ttj, ut, mob, ptv, openrtb).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Mediated Network</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The name and ID of the
mediated network under which mediated bids are present.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Device Type</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">Different device types
on which the video impression will be rendered. For example, Desktops
&amp; Laptops, Mobile Phones, Tablets, TV, Game Consoles , Media Players
, Set Top Box, etc.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Operating System
Family</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The name and ID of the
supported operating system family on which the devices run. For example,
Android, Apple Mac, Apple iOS, Microsoft Windows, etc.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Operating System</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The name and ID of an
operating system under an operating system family on which devices run.
For example, Android 8.1 ,Oreo 9.0 Popsickle under Android Operating
System Family, iOS 8.1 , 9.0 under Apple iOS family, etc.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Country</td>
<td class="entry" headers="ID-00002b8f__entry__2">Yes</td>
<td class="entry" headers="ID-00002b8f__entry__3">The country in which
the impression took place.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__1">Waterfall Depth</td>
<td class="entry" headers="ID-00002b8f__entry__2">No</td>
<td class="entry" headers="ID-00002b8f__entry__3">The maximum number of
waterfall attempts that are allowed to try and display the ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__1">Waterfall
Position</td>
<td class="entry" headers="ID-00002b8f__entry__2">No</td>
<td class="entry" headers="ID-00002b8f__entry__3">The position of the
creative in the waterfall.</td>
</tr>
</tbody>
</table>





<b>Note:</b> In addition, you can also filter
on a particular number of impressions using the **Minimum Impressions**
filter.



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b8f__entry__43" class="entry">Column</th>
<th id="ID-00002b8f__entry__44" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Imps</td>
<td class="entry" headers="ID-00002b8f__entry__44">The total number of
impressions. For video ads, an impression takes place when the first
frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall Depth</td>
<td class="entry" headers="ID-00002b8f__entry__44">The maximum number of
waterfall attempts that are allowed to try and display the ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall
Latency</td>
<td class="entry" headers="ID-00002b8f__entry__44">The average latency
of the waterfall.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall
Position</td>
<td class="entry" headers="ID-00002b8f__entry__44">The position of the
creative in the waterfall.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall Ad
Attempts</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of video
waterfall ad load attempts to show an ad.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall Ad
Loads</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of
succesful video waterfall ad loads after attempts to show an ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall Ad
Timeouts</td>
<td class="entry" headers="ID-00002b8f__entry__44">Maximum amount of
time in milliseconds that waterfall processing of mediated ad sources is
allowed to run before it stops attempting to deliver a viable ad.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall Ad
Errors</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of failed
video waterfall ad loads (VAST errors) after attempts to show an
ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Waterfall
Inclusions</td>
<td class="entry" headers="ID-00002b8f__entry__44">The total number of
video waterfall inclusions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation
Latency</td>
<td class="entry" headers="ID-00002b8f__entry__44">The average video
latency of the mediation.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation
Requests</td>
<td class="entry" headers="ID-00002b8f__entry__44">The total number of
mediation requests for a video creative to display.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation Errors</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of video
mediation error responses received.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation No Bid</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of video
mediation no bid responses received.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation
Timeouts</td>
<td class="entry" headers="ID-00002b8f__entry__44">The maximum time in
milliseconds that the mediation script will load mediated bids on the
page.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002b8f__entry__43">Mediation
Responses</td>
<td class="entry" headers="ID-00002b8f__entry__44">The number of
successful video mediation responses where a valid video creative was
returned and unwrapped.</td>
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

      
    - <span id="ID-00002b8f__d10e107">**Export, send results via
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
6.  <span id="ID-00002b8f__d10e136">Click Run
    report to send your report request.






