---
Title : Video Inventory Availability Report
Description : Buyers can use the Video Inventory Availability report to determine
whether inventory that meets their specific buying requirements is
likely to be available for purchase. While most of the data in the
---


# Video Inventory Availability Report





Buyers can use the Video Inventory Availability report to determine
whether inventory that meets their specific buying requirements is
likely to be available for purchase. While most of the data in the
report is historical and may not accurately reflect today's available
inventory, reviewing recent availability is a good way to predict the
success of inventory targeting in the future. To access this report, go
to
Network
\> Inventory \>
Reporting and select
Video Inventory Availability from
the Type dropdown. For more
information on the available data fields and their definitions, see
**Dimensions** and **Metrics** below.

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
<a href="availability-of-reporting-data.html" class="xref">Availability
of Reporting Data</a>.

Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a277__entry__1" class="entry">Column</th>
<th id="ID-0000a277__entry__2" class="entry">Filter?</th>
<th id="ID-0000a277__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Seller</td>
<td class="entry" headers="ID-0000a277__entry__2">No</td>
<td class="entry" headers="ID-0000a277__entry__3">The seller of the
inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Seller Type</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3"><span
class="ph">Xandr buckets sellers into different types for billing
purposes. For example, publisher, intermediary or both.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Content Category</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The content category
associated with the inventory where these impressions occurred, for
example Business &amp; Industry.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Ad Request Call
Type</td>
<td class="entry" headers="ID-0000a277__entry__2">No</td>
<td class="entry" headers="ID-0000a277__entry__3">The type of handler
that was used to send the impression to Xandr
(e.g., <code class="ph codeph">vmap</code>, <code
class="ph codeph">ut</code>, <code class="ph codeph">mob</code>, <code
class="ph codeph">ptv</code>, <code
class="ph codeph">openrtb</code>).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Site Domain</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">For web video
inventory, the domain of the site where the inventory is available.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Application Id</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">For mobile app
inventory, the ID of the app that will host the placement.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Device Type</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The type of hardware
device that will deliver the ad, for example a desktop computer or a
game console.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Video Context</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">When and where the
video ad plays – pre-roll, mid-roll, post-roll, or outstream.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Video Playback
Method</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The playback method
for the creative, for example 'Autoplay, Sound On'.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Video Player Size</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The size of the player
based on width in pixels: Small, Medium, Large, or Unknown.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Video Player
Width</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The width of the
player in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Video Player
Height</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The height of the
player in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Country</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The country in which
the impression took place.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Inventory Type</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The type of Managed,
Programmatic, or Deals.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Maximum Ad
Duration</td>
<td class="entry" headers="ID-0000a277__entry__2">No</td>
<td class="entry" headers="ID-0000a277__entry__3">Specifies the maximum
duration of the video placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">VAST Version
Support</td>
<td class="entry" headers="ID-0000a277__entry__2">No</td>
<td class="entry" headers="ID-0000a277__entry__3">The version of VAST
supported by the publisher player.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Minimum Ad
Duration</td>
<td class="entry" headers="ID-0000a277__entry__2">No</td>
<td class="entry" headers="ID-0000a277__entry__3">Specifies the minimum
duration of the video placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Seller Group</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The group of sellers
the seller belongs to.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Supply Type</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">The supply type for
the impression – Web, Mobile Web, or Mobile App.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Skippability
Support</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Whether the publisher
player was set to honor the Skip setting in the VAST document.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">VPAID Support</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Whether the publisher
player supported a VPAID wrapper.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Min/Max CTR</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Filter only. Sets the
threshold for the clickthrough rate of inventory to be included in the
report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Min/Max Completion
Rate</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Filter only. Sets the
threshold for the video completion rate of inventory to be included in
the report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__1">Min/Max Viewability
Rate</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Filter only. Sets the
viewability threshold of inventory to be included in the report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__1">Maximum VAST
version</td>
<td class="entry" headers="ID-0000a277__entry__2">Yes</td>
<td class="entry" headers="ID-0000a277__entry__3">Filter only. Sets the
maximum publisher player VAST version for inventory to be included in
the report.</td>
</tr>
</tbody>
</table>



Metrics



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a277__entry__79" class="entry">Column</th>
<th id="ID-0000a277__entry__80" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__79">CTR</td>
<td class="entry" headers="ID-0000a277__entry__80">Clickthrough
rate.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__79">Viewability Rate</td>
<td class="entry" headers="ID-0000a277__entry__80">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a277__entry__79">Completion Rate</td>
<td class="entry" headers="ID-0000a277__entry__80">The ratio of video
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a277__entry__79">Video Avails</td>
<td class="entry" headers="ID-0000a277__entry__80">The number of videos
predicted to be available for purchase, based on historical data</td>
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

      
    - <span id="ID-0000a277__d10e107">**Export, send results via
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
6.  <span id="ID-0000a277__d10e136">Click Run
    report to send your report request.





Related Topics

- <a href="reporting-guide.html" class="xref">Reporting Guide</a>
- <a href="network-reporting.html" class="xref">Network Reporting</a>
- <a href="availability-of-reporting-data.html" class="xref">Availability
  of Reporting Data</a>






