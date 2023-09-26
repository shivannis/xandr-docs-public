---
Title : Identifiers: Distinct ID Report
Description : The Distinct IDs Report provides Xandr customers
with insights on delivery, performance, and unique reach across various
industry IDs. These IDs include RampID, NetID, and Unified ID 2.0
---


# Identifiers: Distinct ID Report





The Distinct IDs Report provides Xandr customers
with insights on delivery, performance, and unique reach across various
industry IDs. These IDs include RampID, NetID, and Unified ID 2.0
(UID2), along with cookies and device-based IDs. By using the
information in the report, you can make an informed decision about which
ID solutions to integrate. Users can access the report either through
the platform or the API.





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







## Data Retention Period

This report's data is retained for 90 days. For more information about
how quickly reporting data is processed, see
<a href="availability-of-reporting-data.html" class="xref">Availability
of Reporting Data</a>.





## Dimensions



Important: The **Filter?** column below
shows whether a dimension can be used as a filter as well as being used
to group by.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="identifiers-distinct-id-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="identifiers-distinct-id-report__entry__2"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="identifiers-distinct-id-report__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The ID of the
advertiser for which impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">ID Type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">Concatenated list of
identifier types displayed in each row include:
<ul>
<li><code class="ph codeph">UID2</code></li>
<li><code class="ph codeph">RampID</code></li>
<li><code class="ph codeph">NetID</code></li>
<li><code class="ph codeph">TradeDeskID</code></li>
<li><code class="ph codeph">CriteoID</code></li>
<li><code class="ph codeph">Cookie / Device ID</code></li>
<li><code class="ph codeph">Unidentified</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Insertion Order</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The id of the
insertion order for which impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Billing Period</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The insertion order's
billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Line Item</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The ID of the line
item under which the impression was purchased. For more information
about line items, see our documentation on <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/working-with-line-items.html"
class="xref" target="_blank">Working with Line Items</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Flight ID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The ID of the billing
period's flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Split</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3"><p>The name and ID of
the split that purchased the impressions in this data set. Splits are
only applicable to <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/augmented-line-items-ali.html"
class="xref" target="_blank">Augmented Line Items</a> (AL). For any rows
with a campaign name, the Split column (if included) will be
null.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Deal</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The id of the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/deals-faq.html"
class="xref" target="_blank">Deal</a> the ad was delivered against.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The buyer of the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The bidder that
bought the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The seller of the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The publisher on
whose inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The name and ID of
the placement through which this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Placement Group</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The placement group
name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Media Type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The media type is the
general display style of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Impression Type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The type of
impression served. For details, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-seller-analytics.html#ID-0000517b__ID-00005293"
class="xref" target="_blank">Impression Types</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Device Type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The device type on
which creative is displayed to the end-users such as mobiles, laptops,
tablets, and other devices.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">BP Start Date</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The start date of the
billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">BP End Date</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The end date of the
billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Flight Start
Date</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The start date of the
flight within the billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Flight End Date</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The end date of the
flight within the billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__3">The id of the
targeted country of the advertisement.</td>
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
<th id="identifiers-distinct-id-report__entry__70"
class="entry colsep-1 rowsep-1">Column</th>
<th id="identifiers-distinct-id-report__entry__71"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="identifiers-distinct-id-report__entry__72"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Avg Imp Per
Unique</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">Imps / Uniques</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The number of
impressions viewed per unique ID Type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The total number of
transacted impressions. Impression counts are not de-duplicated across
ID Types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The total number of
clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Cost</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">Cost</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The media cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Cost eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The average CPC
based on media cost.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Cost eCPM</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The average CPM
based on media cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">CTR</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">Clicks / Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The average Click
Through Rate (CTR).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Uniques</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The total number of
unique cookies, mobile, or other devices reached by the impressions per
ID Type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Reseller
Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The revenue from
resold impressions. This is only populated when the impression type is
resold.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">booked revenue +
reseller revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The sum of booked
revenue and reseller revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Booked Revenue
CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">booked revenue /
imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The booked revenue
per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Resold CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"><p>reseller_revenue
/ imps * 1000</p></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The resold revenue
per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Media Cost CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The media cost per
1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__70">Revenue CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__71">(reseller_revenue +
booked_revenue) / imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers-distinct-id-report__entry__72">The revenue per 1000
impressions.</td>
</tr>
</tbody>
</table>





## How To Run Your Report

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

      
    - <span id="identifiers-distinct-id-report__d10e107">**Export, send
      results via email**: Run the report in the background and email
      the results to one or more email addresses.
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
6.  <span id="identifiers-distinct-id-report__d10e136">Click
    Run report to send your report
    request.






