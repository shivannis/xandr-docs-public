---
Title : Buyer Reach and Frequency Report
Description : The Buyer Reach and Frequency Report holds two parameters as reach which
is the number of unique devices or persons exposed to ads and frequency
which is the average number of times each unique device or person was
exposed to advertisements. It helps to draw meaningful conclusions about
---


# Buyer Reach and Frequency Report





The Buyer Reach and Frequency Report holds two parameters as reach which
is the number of unique devices or persons exposed to ads and frequency
which is the average number of times each unique device or person was
exposed to advertisements. It helps to draw meaningful conclusions about
the impact of cross device on conversion use cases. In short, buyers can
have an insight on how cross device impacted the number of times a
single person saw their ads across all their devices using this report.





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







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000b485__entry__1" class="entry">Column</th>
<th id="ID-0000b485__entry__2" class="entry">Filter?</th>
<th id="ID-0000b485__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Advertiser</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The advertiser for
which impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The insertion order
under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Billing Period</td>
<td class="entry" headers="ID-0000b485__entry__2">No</td>
<td class="entry" headers="ID-0000b485__entry__3">The insertion order's
billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Line Item</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The line item under
which the impression was purchased. For more information about line
items, see <a href="working-with-line-items.html" class="xref">Working
with Line Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Flight</td>
<td class="entry" headers="ID-0000b485__entry__2">No</td>
<td class="entry" headers="ID-0000b485__entry__3">The start and end date
of flight in a billing period under an insertion order.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Split</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Creative</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The creative for which
we're reporting on frequency and/or recency.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Media Type</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The media type is the
general display style of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Device Type</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The device type on
which creative is displayed to the end users such as mobiles, laptops ,
tablets etc.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Supply Type</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The supply type is the
method of rendering the creative on a device. For example, for mobiles
or tablets the supply type is mobile app, whereas for laptops or
desktops it is web app.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__1">Country</td>
<td class="entry" headers="ID-0000b485__entry__2">Yes</td>
<td class="entry" headers="ID-0000b485__entry__3">The targeted country
of the advertisement</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__1">Frequency Cap
Type</td>
<td class="entry" headers="ID-0000b485__entry__2">No</td>
<td class="entry" headers="ID-0000b485__entry__3">The type of frequency
cap used to limit overdelivery to individual users. When an ID is
available in the request, <code class="ph codeph">Classical</code> is
the default frequency cap type. <code class="ph codeph">Advanced</code>
refers to the Advanced Frequency Management feature.</td>
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
<th id="ID-0000b485__entry__40" class="entry">Column</th>
<th id="ID-0000b485__entry__41" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__40">Imps</td>
<td class="entry" headers="ID-0000b485__entry__41">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__40">Unique Devices</td>
<td class="entry" headers="ID-0000b485__entry__41">The total number of
unique cookies, mobile or other devices reached by the impressions</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__40">Average Impressions
per Device</td>
<td class="entry" headers="ID-0000b485__entry__41">The number of
impressions viewed per unique device</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__40">Cross Device
Incremental Device Reach</td>
<td class="entry" headers="ID-0000b485__entry__41">The number of unique
devices reached due to cross-device audience extension. This metric
represents the number of unique devices that are not a part of the
targeted segment, but on which impressions were delivered due to a cross
device graph being applied, extending the reach to more devices owned by
a consumer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__40">Cross Device
Incremental Imps</td>
<td class="entry" headers="ID-0000b485__entry__41">The number of
impressions transacted due to cross-device audience extension. This
metric represents the number of impressions that were delivered on
devices outside the targeted segment(s) for which a cross-device graph
was applied, extending the reach to more devices owned by a
consumer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__40">Identified Imps</td>
<td class="entry" headers="ID-0000b485__entry__41">The total number of
impressions that included a cookie, device id, or other identifier as
part of the ad request.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__40">Unidentified
Imps</td>
<td class="entry" headers="ID-0000b485__entry__41">The total number of
impressions (i.e. those impressions that did not include a cookie,
device id, or other identifier as part of the ad request.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000b485__entry__40">Average Impressions
Per Identified Device</td>
<td class="entry" headers="ID-0000b485__entry__41">The number of
identified impressions viewed per unique user.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000b485__entry__40">Estimated People
(<strong>currently available in the US only</strong>)</td>
<td class="entry" headers="ID-0000b485__entry__41">The estimated number
of people reached, deduplicated across the user-specified dimensions.

Note: Xandr has
built a probabilistic data science model to estimate people reach, which
is a new metric available in this report. This model considers the
unique devices reached at the zip code level, and utilizes publicly
available US census data for the total population of each zip code, in
order to estimate the number of people reached for that zip code. This
zip code level data is then aggregated when a report is pulled in <span
class="ph">Microsoft Monetize so that the buyer can view it at any
level of granularity that is provided by the existing dimensions in the
report.
</td>
</tr>
</tbody>
</table>



Note:
<a href="advanced-frequency-management.html" class="xref"
title="Advanced Frequency Management (AFM) is an innovative frequency-capping feature that lets you control the number of impressions seen by users who opt out of including traditional identifiers in ad requests (&quot;cookieless users&quot;).">Advanced
Frequency Management (AFM)</a>, which is currently in **beta**, does not
take universal identifier (Universal ID) into account. This is subject
to change as the feature would move into GA. Line items utilising
Universal ID targeting should avoid using AFM until this is completely
adapted.







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

      
    - <span id="ID-0000b485__d10e107">**Export, send results via
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
6.  <span id="ID-0000b485__d10e136">Click Run
    report to send your report request.






