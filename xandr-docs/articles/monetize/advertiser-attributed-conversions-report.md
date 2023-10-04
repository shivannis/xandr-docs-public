---
Title : Advertiser Attributed Conversions Report
Description : When a conversion pixel fires, Xandr determines
if the conversion can be attributed (tied to a creative that the user
previously viewed or clicked). For more information about how conversion
---


# Advertiser Attributed Conversions Report





When a conversion pixel fires, Xandr determines
if the conversion can be attributed (tied to a creative that the user
previously viewed or clicked). For more information about how conversion
attribution works, see
<a href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.

The Attributed Conversions Report lets you see conversion pixel IDs,
order IDs, when clicks or impressions were attributed, and other
information related to your advertisers' attributed conversions.

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



This report can retrieve data for the last 90 days.

Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000adba__entry__1" class="entry">Column</th>
<th id="ID-0000adba__entry__2" class="entry">Filter?</th>
<th id="ID-0000adba__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__1">Line Item</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The line item under
which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__1">Campaign</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The campaign that
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__1">Split</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__1">Creative</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The creative that
served on this impression. For more information about creatives, see <a
href="working-with-creatives.html" class="xref"
title="You can traffic a wide range of creative types, from banners to increasingly pervasive rich media types, through the Xandr platform. Only secure content is supported.">Working
with Creatives</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__1">Impression Type</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The type of
impression. For more information, see <a
href="advertiser-attributed-conversions-report.html#ID-0000adba__ID-0000ae78"
class="xref">advertiser-attributed-conversions-report.html#ID-0000adba__ID-0000ae78</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__1">Conversion Pixel</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">The conversion pixel
which was fired in this conversion event. For more information about
conversion pixels, see <a href="working-with-conversion-pixels.html"
class="xref">Working with Conversion Pixels</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__1">Post Click/Post View
Conversion</td>
<td class="entry" headers="ID-0000adba__entry__2">Yes</td>
<td class="entry" headers="ID-0000adba__entry__3">Whether the conversion
was a post-click (PC) or post-view (PV) conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__1">Post Click/Post View
Revenue</td>
<td class="entry" headers="ID-0000adba__entry__2">No</td>
<td class="entry" headers="ID-0000adba__entry__3">Whether the revenue
generated was from a post-click (PC) or post-view (PV) conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__1">Order ID</td>
<td class="entry" headers="ID-0000adba__entry__2">No</td>
<td class="entry" headers="ID-0000adba__entry__3">The order ID or SKU
optionally passed in the conversion pixel. If your advertiser is passing
in an order ID when the conversion pixel fires, you could send a full
list of order IDs back to them to help with conversion attribution. For
more information, see <a href="conversion-pixels-advanced.html"
class="xref">Conversion Pixels Advanced</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__1">User ID</td>
<td class="entry" headers="ID-0000adba__entry__2">No</td>
<td class="entry" headers="ID-0000adba__entry__3">The <span
class="ph">Xandr user ID for the user who converted. If you have
a mapping of your own user IDs to Xandr IDs, you
might be able to do some analysis around which segments are converting,
or you could count your unique and repeat converters.

Warning: To prepare for the upcoming
implementation of the GDPR, this field is being deprecated on May 21,
2018. Subject to requirements under the GDPR, this field will continue
to be available if you receive log level data via <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data---cloud-export.html"
class="xref" target="_blank">Cloud Export</a>. For details, see <a
href="https://wiki.xandr.com/display/GDPR/Changes%2bto%2bLog-Level%2bData%2band%2bReporting"
class="xref" target="_blank">Changes to Log-Level Data and Console
Reporting</a>.
</td>
</tr>
</tbody>
</table>



Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000adba__entry__34" class="entry">Value</th>
<th id="ID-0000adba__entry__35" class="entry">Name</th>
<th id="ID-0000adba__entry__36" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__34">1</td>
<td class="entry" headers="ID-0000adba__entry__35">Blank</td>
<td class="entry" headers="ID-0000adba__entry__36">No creative
served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__34">2</td>
<td class="entry" headers="ID-0000adba__entry__35">PSA</td>
<td class="entry" headers="ID-0000adba__entry__36">A PSA served because
there were no valid bids and no default creative was available.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__34">3</td>
<td class="entry" headers="ID-0000adba__entry__35">Default Error</td>
<td class="entry" headers="ID-0000adba__entry__36">A default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__34">4</td>
<td class="entry" headers="ID-0000adba__entry__35">Default</td>
<td class="entry" headers="ID-0000adba__entry__36">A default creative
served because there were no valid bids.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__34">5</td>
<td class="entry" headers="ID-0000adba__entry__35">Kept</td>
<td class="entry" headers="ID-0000adba__entry__36">Your advertiser's
creative served on your publisher's site.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__34">6</td>
<td class="entry" headers="ID-0000adba__entry__35">Resold</td>
<td class="entry" headers="ID-0000adba__entry__36">Your publisher's
impression was sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__34">7</td>
<td class="entry" headers="ID-0000adba__entry__35">RTB</td>
<td class="entry" headers="ID-0000adba__entry__36">Your advertiser's
creative served on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__34">8</td>
<td class="entry" headers="ID-0000adba__entry__35">PSA Error</td>
<td class="entry" headers="ID-0000adba__entry__36">A public service
announcement served due to a timeout issue or lack of a default
creative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__34">9</td>
<td class="entry" headers="ID-0000adba__entry__35">External
Impression</td>
<td class="entry" headers="ID-0000adba__entry__36">An impression from an
impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__34">10</td>
<td class="entry" headers="ID-0000adba__entry__35">External Click</td>
<td class="entry" headers="ID-0000adba__entry__36">A click from a click
tracker.</td>
</tr>
</tbody>
</table>



Metrics



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000adba__entry__67" class="entry">Column</th>
<th id="ID-0000adba__entry__68" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__67">Auction ID</td>
<td class="entry" headers="ID-0000adba__entry__68">The auction ID for
which the conversion was attributed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__67">External Data</td>
<td class="entry" headers="ID-0000adba__entry__68">Optional extra data
passed in on conversion pixel using the "other" parameter.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000adba__entry__67">Impression Time</td>
<td class="entry" headers="ID-0000adba__entry__68">The time at which the
impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000adba__entry__67">Time of
Conversion</td>
<td class="entry" headers="ID-0000adba__entry__68">The time at which the
conversion occurred.</td>
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

      
    - <span id="ID-0000adba__d10e107">**Export, send results via
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
6.  <span id="ID-0000adba__d10e136">Click Run
    report to send your report request.





Related Topic

- <a href="network-reporting.html" class="xref">Network Reporting</a>
- <a href="conversion-attribution.html" class="xref">Conversion
  Attribution</a>






