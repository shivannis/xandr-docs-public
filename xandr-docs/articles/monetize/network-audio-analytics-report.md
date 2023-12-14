---
Title : Network Audio Analytics Report
Description : The Network Audio Analytics report can be used
ms.date: 10/28/2023
to view audio event metrics across multiple buyers and sellers.
---


# Network Audio Analytics Report





The Network Audio Analytics report can be used
to view audio event metrics across multiple buyers and sellers.

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





<b>Tip:</b> For more information about how
quickly report data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.



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
<th id="ID-00002960__entry__1" class="entry">Column</th>
<th id="ID-00002960__entry__2" class="entry">Filter?</th>
<th id="ID-00002960__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Buyer</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The buyer of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Seller</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The seller of this
impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Advertiser</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The advertiser whose
creative served on this impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Publisher</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The publisher on whose
inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Placement Group</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The placement group
(simply a collection of placements) which includes the placement through
which this impression occurred.

<b>Note:</b> For impressions older than 100
days, the ID will be 0.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Placement</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The placement through
which this impression occurred. <b>Note:</b> For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The insertion order
under which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Line Item</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The line item under
which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Campaign</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The campaign which
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Creative</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The creative
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Brand</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The brand associated
with the creative. Xandr keeps a list of
advertiser brands in our systems that can be applied to a creative when
its uploaded. For impression type "Resold", no information is available
in the Brand field for this
report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Country</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The country in which
the impression took place.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Deal</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The deal associated
with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Creative Recency</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">How recently the
creative was viewed by the user. For more information, see <a
href="creative-frequency-and-recency-report.md" class="xref">Creative
Frequency and Recency Report</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Creative
Frequency</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">How many times the
creative has been viewed by the user. For more information, see Creative
Frequency Definitions in the <a
href="creative-frequency-and-recency-report.md" class="xref">Creative
Frequency and Recency Report</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Creative Duration</td>
<td class="entry" headers="ID-00002960__entry__2">No</td>
<td class="entry" headers="ID-00002960__entry__3">The duration of the
audio creative associated with this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">IO: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The trafficker
associated with this insertion order. This is an insertion order
reporting label.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">IO: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The sales rep
associated with this insertion order. This is an insertion order
reporting label.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Media Subtype</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The media subtype for
the creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Supply Type
Filterable</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">Whether to filter by
supply type.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Site Domain</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The site domain
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Application ID</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The application ID
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__1">Buying Currency</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The transaction
currency that the buyer used to purchase this impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__1">Audio Context</td>
<td class="entry" headers="ID-00002960__entry__2">Yes</td>
<td class="entry" headers="ID-00002960__entry__3">The type of the audio
creative. Possible values are:
<ul>
<li>Unknown</li>
<li>Pre-roll</li>
<li>Mid-roll</li>
<li>Post-roll</li>
<li>Outstream</li>
</ul></td>
</tr>
</tbody>
</table>



You can also choose to select the Only
include results where a Deal is present option.

Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002960__entry__76" class="entry">Column</th>
<th id="ID-00002960__entry__77" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Imps</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Clicks</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">CTR</td>
<td class="entry" headers="ID-00002960__entry__77">The click-through
rate; the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Total
Conversions</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Conversion Rate</td>
<td class="entry" headers="ID-00002960__entry__77">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Revenue</td>
<td class="entry" headers="ID-00002960__entry__77">The total revenue;
the sum of booked and resold revenue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Revenue Per Audio
Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The revenue per audio
completion</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Total RPM</td>
<td class="entry" headers="ID-00002960__entry__77">The revenue per 1000
impressions, including defaults, PSAs, and errors.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Cost</td>
<td class="entry" headers="ID-00002960__entry__77">The total media cost
across direct publishers and RTB inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Cost Per Audio
Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The cost per audio
completion</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">CPM</td>
<td class="entry" headers="ID-00002960__entry__77">The total media cost
per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Profit</td>
<td class="entry" headers="ID-00002960__entry__77">The total <span
class="ph">Network revenue minus the total <span
class="ph">Network media cost.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">PPM</td>
<td class="entry" headers="ID-00002960__entry__77">The total profit per
1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Completion Rate</td>
<td class="entry" headers="ID-00002960__entry__77">The ratio of audio
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Start Rate</td>
<td class="entry" headers="ID-00002960__entry__77">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Skips</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Starts</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Skip Rate</td>
<td class="entry" headers="ID-00002960__entry__77">The percentage of
times the user opted to skip the video.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">25% Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">50% Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times the video completed 50% of the entire duration of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">75% Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times the video completed 75% of the entire duration of time.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">100% Complete</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times the video played for the entire duration of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Ad Responses</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
responses served to the audio player.

<b>Note:</b> An <strong>Impression</strong> is
recorded when the audio player loads the creative, displays the first
frame, and the impression tracker is fired from the audio player.
<strong>Ad Responses</strong> refers to the VAST document (XML) being
served in response to a request from the audio player, but does not mean
that a successful impression event occurred.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Errors</td>
<td class="entry" headers="ID-00002960__entry__77">The total number of
times an error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002960__entry__76">Audio Fill</td>
<td class="entry" headers="ID-00002960__entry__77">The percentage of
audio impressions delivered out of the total number of audio ad
responses received. (Imps / Ad Responses)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002960__entry__76">Device Type</td>
<td class="entry" headers="ID-00002960__entry__77">
The type of device on which the impression was served. Possible values
are:
<ul>
<li>desktops &amp; laptops</li>
<li>tablets</li>
<li>mobile phones</li>
<li>tv</li>
<li>game consoles</li>
<li>set top box</li>
<li>media players</li>
<li>other devices</li>
</ul>
</td>
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

      
    - <span id="ID-00002960__d10e107">**Export, send results via
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
6.  <span id="ID-00002960__d10e136">Click Run
    report to send your report request.






