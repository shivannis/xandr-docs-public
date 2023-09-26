---
Title : Multi-Key Value Analytics Report
Description : The Multi-Key Value Analytics report shows you the information
associated with your network's defined multiple targeting keys and
values.
---


# Multi-Key Value Analytics Report





The Multi-Key Value Analytics report shows you the information
associated with your network's defined multiple targeting keys and
values.

Impressions with key/value targeting will serve and be reported only for
those impressions that were logged by a placement tag containing the
**kw\_** prefix on the key name. For example, a placement tag
containing`keyname=value1` will not serve and therefore not be logged,
whereas a placement tag containing **kw\_**`keyname=value1` will serve
and be logged. This applies to ad calls with the following tag types:
/tt, /ttj, /fpt, /jpt, /pt, /ptv, /ssptv, /mtj, /map, and /mob.



Note: **Xandr
Seller Tags:** When using <a
href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag/seller-tag.html"
class="xref" target="_blank">Xandr's seller
tag</a> (AST), omit the **kw\_** prefix. AST has the keyword object in
the body of the request, so the prefix is not needed.



Not all impressions from key/value targets will be included in reports.
To be included, the targets must meet the following criteria:

- Key must be pre-defined.
- Value must be pre-defined OR Value must be targeted by at least one
  line item or campaign.
- Value is not a numeric range (greater than or less than).
- Value does not include a wildcard.

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

Time ranges including dates occurring greater than 45 days ago

If you create a Multi-Key Value Analytics report with the Range field
set to Custom (where the end date is greater than 45 days from today),
your report (regardless of metrics included) will be added to a special
queue for "resource-intensive" reports. As a result, the report may take
longer than usual to complete. In addition, this resource-intensive
report may, due to the amount of data being requested, fail before being
completed. If your report fails to complete, you will receive a
notification. If your report request fails, you can:

- rerun the report at a later time.
- use a report type other than Key Value Analytics.
- alter the way you structure your reports (if possible) so they do not
  include dates greater than 45 days ago.

If you are frequently requesting Multi-Key Value Analytics reports which
include dates longer than 45 days ago, you may need to consider running
these reports via the API, caching the data and using <a
href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
class="xref" target="_blank">Bulk Reporting Feeds</a> or <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log-Level Data Feeds</a> (LLD). See
<a href="dimensions-metrics-filtering-and-grouping.html"
class="xref">Dimensions, Metrics, Filtering, and Grouping</a> for more
details on how to alter your reports to avoid these issues.

Data Retention Period

Data in this report is retained for 428 days.

Dimensions



Important: The
**Filter?** column shows whether a
dimension can be used as a filter as well as being used to group by.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f71__entry__1" class="entry">Column</th>
<th id="ID-00001f71__entry__2" class="entry">Filter?</th>
<th id="ID-00001f71__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Buyer ID</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The member name and
Xandr ID of the buyer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Advertiser</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The advertiser whose
creative served on this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00001f71__entry__2"> Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The name of the
insertion order associated with the line item or
campaign that purchased the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Line Item</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The line item
associated with this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Deal</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The name and ID of a
deal if associated with the line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Creative</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The creative served
for the impression.

Note:
<ul>
<li>For impressions older than 100 days, creatives will be aggregated
into one row with 0 as the creative_id.</li>
<li>For external click or impression trackers, creative_id will be
"External Clicks" or "External Imps".</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Publisher</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The publisher on whose
inventory this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Placement</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The placement through
which this impression occurred.

Note: For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Placement Group</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The placement group
(simply a collection of placements) which includes the placement through
which this impression occurred.

Note: For impressions older than 100
days, the ID will be 0.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Publisher
Currency</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause most monetary metrics to be displayed in the
selling currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Size</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The size of the
creative (e.g., 320x50).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Advertiser
Currency</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The transaction
currency that the buyer used to purchase the impression. Including this
dimension will cause most monetary metrics to be displayed in the buying
currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Impression Type</td>
<td class="entry" headers="ID-00001f71__entry__2"> Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">See the <span
class="ph uicontrol">Impression Types table below for definitions
of the different types of impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Revenue Type</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The revenue type
associated with the line item . For example, CPC, CPA, vCPM etc.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Device Type</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">Different device types
on which the video impression will be rendered . For example, Desktops
&amp; Laptops, Mobile Phones, Tablets, TV, Game Consoles , Media Players
, Set Top Box etc.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 1 Name
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the first reporting key name.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 1 Value
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the first reporting key value.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 1
Name</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The name of the first
reporting key.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key1
Value</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The value associated
with the first reporting key.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 2 Name
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the second reporting key name.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 2 Value
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the second reporting key value.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 2
Name</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The name of the second
reporting key.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 2
Value</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The value associated
with the second reporting key.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 3 Name
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the third reporting key name.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 3 Value
Label</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The label (alias) of
the third reporting key value.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 3
Name</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The name of the third
reporting key.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__1">Reporting Key 3
Value</td>
<td class="entry" headers="ID-00001f71__entry__2">Yes</td>
<td class="entry" headers="ID-00001f71__entry__3">The value associated
with the third reporting key.</td>
</tr>
</tbody>
</table>





Note: In addition, you can also filter
on a particular number of impressions using the **Minimum Impressions**
filter.



Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f71__entry__85" class="entry">Column</th>
<th id="ID-00001f71__entry__86" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Imps</td>
<td class="entry" headers="ID-00001f71__entry__86">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">Imps (master
creative)</td>
<td class="entry" headers="ID-00001f71__entry__86">The number of
page-level roadblocks that served the master creative.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Clicks</td>
<td class="entry" headers="ID-00001f71__entry__86">The total number of
clicks.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">Total
Conversions</td>
<td class="entry" headers="ID-00001f71__entry__86">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Conversion Rate</td>
<td class="entry" headers="ID-00001f71__entry__86">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">Booked Revenue</td>
<td class="entry" headers="ID-00001f71__entry__86">The total revenue
booked through direct advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Revenue</td>
<td class="entry" headers="ID-00001f71__entry__86">The total revenue;
the sum of booked and resold revenue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">Total RPM</td>
<td class="entry" headers="ID-00001f71__entry__86">The revenue per 1000
impressions, including defaults, PSAs, and errors. For more information
about these impression types, see <strong>Impression Types</strong>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Imps (Viewed)</td>
<td class="entry" headers="ID-00001f71__entry__86">The total number of
impressions viewed by the consumers</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">Measured Imps</td>
<td class="entry" headers="ID-00001f71__entry__86">The number of
impressions counted when the measurement script fires a pixel to the
Xandr platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Measurement Rate</td>
<td class="entry" headers="ID-00001f71__entry__86">Measured Impressions
/ Total number of impressions</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__85">View Rate</td>
<td class="entry" headers="ID-00001f71__entry__86">Viewed Impressions /
View Measured Impressions</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__85">Resold Revenue</td>
<td class="entry" headers="ID-00001f71__entry__86">The total revenue on
resold impressions through direct publishers.</td>
</tr>
</tbody>
</table>



You may also choose to display currency values in the Advertiser/Buying
and/or Publisher/Selling currency as well as USD.

Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f71__entry__113" class="entry">Value</th>
<th id="ID-00001f71__entry__114" class="entry">Name</th>
<th id="ID-00001f71__entry__115" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">1</td>
<td class="entry" headers="ID-00001f71__entry__114">Blank</td>
<td class="entry" headers="ID-00001f71__entry__115">No creative
served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__113">2</td>
<td class="entry" headers="ID-00001f71__entry__114">PSA</td>
<td class="entry" headers="ID-00001f71__entry__115">A public service
announcement served because no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">3</td>
<td class="entry" headers="ID-00001f71__entry__114">Default Error</td>
<td class="entry" headers="ID-00001f71__entry__115">A default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__113">4</td>
<td class="entry" headers="ID-00001f71__entry__114">Default</td>
<td class="entry" headers="ID-00001f71__entry__115">A default creative
served because no line item or campaign bid or
no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">5</td>
<td class="entry" headers="ID-00001f71__entry__114">Kept</td>
<td class="entry" headers="ID-00001f71__entry__115">One of your managed
advertisers served a creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__113">6</td>
<td class="entry" headers="ID-00001f71__entry__114">Resold</td>
<td class="entry" headers="ID-00001f71__entry__115">The impression was
sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">7</td>
<td class="entry" headers="ID-00001f71__entry__114">RTB</td>
<td class="entry" headers="ID-00001f71__entry__115">Your creative served
on third-party inventory. No RTB impressions are included in this
report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__113">8</td>
<td class="entry" headers="ID-00001f71__entry__114">PSA Error</td>
<td class="entry" headers="ID-00001f71__entry__115">A public service
announcement served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">9</td>
<td class="entry" headers="ID-00001f71__entry__114">External
Impression</td>
<td class="entry" headers="ID-00001f71__entry__115">An impression from
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f71__entry__113">10</td>
<td class="entry" headers="ID-00001f71__entry__114">External Click</td>
<td class="entry" headers="ID-00001f71__entry__115">A click from a click
tracker.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001f71__entry__113">11</td>
<td class="entry" headers="ID-00001f71__entry__114">Insertion</td>
<td class="entry" headers="ID-00001f71__entry__115">Your creative served
on third-party inventory where it persists across page-loads and
sessions.

Note: This impression type is currently
only for Facebook News Feed creatives.
</td>
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

      
    - <span id="ID-00001f71__d10e107">**Export, send results via
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
6.  <span id="ID-00001f71__d10e136">Click Run
    report to send your report request.






