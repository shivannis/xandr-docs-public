---
Title : Buying Billing Report
Description : The Buying Billing Report allows you to manage internal invoicing for
your advertisers across both managed and third-party buying.
---


# Buying Billing Report





The Buying Billing Report allows you to manage internal invoicing for
your advertisers across both managed and third-party buying.

If you would like to use this report to analyze your
Xandr invoice, see
<a href="understanding-your-invoice.html" class="xref"
title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
Your Invoice</a>. (Login required.)

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







Note:

Hourly impression data is available and spans 13 full months. For
impressions that are older than 13 months, hourly data is aggregated
into one row with 'YYYY-MM-DD 00:00:00' as the hour ('YYYY-MM-DD' is the
UTC day in which the activity happened). This will make it look as
though all activity happened at midnight.

All daily data that is older than 13 months will be timestamped based on
the UTC time zone.





Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000bb0a__entry__1" class="entry">Column</th>
<th id="ID-0000bb0a__entry__2" class="entry">Filter?</th>
<th id="ID-0000bb0a__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Seller</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The seller of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Advertiser</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The advertiser that
purchased the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Publisher</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The publisher on whose
inventory the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The Insertion Order
under which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Line Item</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The line item under
which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Campaign</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The campaign which
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Split</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the <strong>Split</strong> column (if
included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">BP External Code</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The optional external
code supplied for the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Media Type
(Billing)</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The video-specific
media type classification for billing only. If you don't have
video-specific pricing, this field is irrelevant. Possible values are
<code class="ph codeph">--</code>, <code
class="ph codeph">Non-Video</code>, <code
class="ph codeph">Video (Hosted)</code>, and <code
class="ph codeph">Video (Non-Hosted)</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Is Cross Seat
Activity</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">Only relevant if you
have more than one member/seat on the Xandr
platform. If you do, this field allows you to know whether the activity
was associated with transactions between members you manage and
therefore simplify the reconciling of their invoices.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Buying Currency</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the <strong>Booked Revenue</strong>,
<strong>Buyer</strong> <strong>Media Cost</strong>, <strong>Auction
Service Deduction</strong>, <strong>Net Media Cost</strong>
<strong>Auction Service Fees</strong> and <strong>Creative Overage
Fees</strong> metrics to be displayed in the buying currency.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Impression Type</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">See <a
href="buying-billing-report.html#ID-0000bb0a__p_tbj_qwc_bkb"
class="xref">Impression Types</a> below for definitions of the different
types of impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Direct Cleared</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">Whether or not the
buyer pays the seller directly for the cost of media.
<blockquote>
<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">0</td>
<td class="entry">Xandr acts as the clearing
house, collecting the cost of media from the buyer and paying the
seller</td>
</tr>
<tr class="even row">
<td class="entry">1</td>
<td class="entry">Xandr does not clear cash; the
buyer pays the seller directly for the cost of media</td>
</tr>
<tr class="odd row">
<td class="entry">-1</td>
<td class="entry">Dummy value for un-billed activity</td>
</tr>
</tbody>
</table>
</blockquote></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Deal</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The deal associated
with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Advertiser Code</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The external ID of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">IO Code</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The external ID of the
insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">LI Code</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The external ID of the
line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Campaign Code</td>
<td class="entry" headers="ID-0000bb0a__entry__2">No</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The external ID of the
campaign. (Does not apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__1">Is Deal</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">Is there any deal
associated with the impression. Different from 'Deal' which is the
actual deal id</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__1">Clearing Event</td>
<td class="entry" headers="ID-0000bb0a__entry__2">Yes</td>
<td class="entry" headers="ID-0000bb0a__entry__3">The underlying auction
event that was transacted (e.g., impression, viewable impression,
completed video).</td>
</tr>
</tbody>
</table>



Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000bb0a__entry__70" class="entry">Column</th>
<th id="ID-0000bb0a__entry__71" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Billable Imps</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total number of
impressions billed to the client.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clicks</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Conversions</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Booked Revenue</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The revenue booked
through managed advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Buyer Media Cost</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total amount to
be paid for media purchases. When buying impressions, this payment is
made to Xandr or an external exchange. When
selling impressions, this payment is made to the publisher.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Auction Service
Deduction</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total deductions
charged for impressions bought from third parties. These deductions are
included in the buyer's media cost and deducted when calculating the
seller's payment.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Net Media Cost</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total amount to
be paid for media purchases, less the Auction Service Deduction.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Creative Overage
Fees</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total fees
charged for hosted creatives that exceed the creative size limit.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Auction Service
Fees</td>
<td class="entry" headers="ID-0000bb0a__entry__71">Total fees charged
for impressions bought from third parties. These fees are charged in
addition to the buyer's media cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">FX Margin Fees</td>
<td class="entry" headers="ID-0000bb0a__entry__71">Fx Margin fee for
buying members transacting in non-USD currencies</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">FX Margin
Deductions</td>
<td class="entry" headers="ID-0000bb0a__entry__71">Fx Margin deduction
for buying members transacting in non-USD currencies</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Service Fees</td>
<td class="entry" headers="ID-0000bb0a__entry__71">DSP Service fee for
buying members</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Service
Deductions</td>
<td class="entry" headers="ID-0000bb0a__entry__71">DSP Service deduction
for buying members</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Ad Serving Fees</td>
<td class="entry" headers="ID-0000bb0a__entry__71">Cost of serving an ad
when the buyer and seller are within a network + cost of serving an ad
charged to the buyer when buying RTB.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clearing Event
Units</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total number of
events purchased, for the associated Clearing Event. When buying a
Clearing Event other than impression (e.g., viewable impressions), the
number of billed events will be less than the number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Creative Hosting Fees
(Video)</td>
<td class="entry" headers="ID-0000bb0a__entry__71">Fees incurred as a
result of hosting your video creatives on our platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clearing Event Booked
Revenue eCPM</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total revenue per
1000 events (for the associated clearing event).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clearing Event Buyer
Media Cost eCPM</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total media cost
per 1000 events (for the associated clearing event).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clearing Event Buyer
Media Cost Per Event</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The media cost per
clearing event.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">Clearing Event Booked
Revenue Per Event</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The total booked
revenue per clearing event.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">Exchange Cost</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The amount taken out
of the exchange to give to the seller. If you aren't using a line item
with a guaranteed outcomes payment model, this metric's value equals
<strong>Net Media Cost</strong>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__70">eCPM Conversion
Deduction</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The amount that <span
class="ph">Xandr takes out of a guaranteed outcomes bid/payment
to cover eCPM conversion and post-auction outcome prediction services.
If you aren't using a line item with a guaranteed outcomes payment
model, this field's value equals 0.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__70">GO Market Making
Fee</td>
<td class="entry" headers="ID-0000bb0a__entry__71">The percentage-based
fee (risk premium) that Xandr takes out of a
guaranteed outcomes bid/payment to cover the risk incurred when
providing guaranteed outcomes. If you aren't using a line item with a
guaranteed outcomes payment model, this field's value equals 0. The
target for this fee is 10%, but the actual percentage used varies based
on continuously shifting prediction accuracy.
<ul>
<li><span class="ph equation-inline">GO Market Making Fee Percentage =
Fixed Percentage (10%) ± Prediction Variability (a positive or negative
percentage that changes based on shifting prediction
accuracy)</li>
</ul></td>
</tr>
</tbody>
</table>



Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000bb0a__entry__118" class="entry">Value</th>
<th id="ID-0000bb0a__entry__119" class="entry">Name</th>
<th id="ID-0000bb0a__entry__120" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__118">5</td>
<td class="entry" headers="ID-0000bb0a__entry__119">Kept</td>
<td class="entry" headers="ID-0000bb0a__entry__120">Your creative served
on managed inventory.

Note: We currently only display cost
for Creative Overage Fee. All other monetary metrics are set to zero out
by design.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__118">7</td>
<td class="entry" headers="ID-0000bb0a__entry__119">RTB</td>
<td class="entry" headers="ID-0000bb0a__entry__120">Your creative served
on third-party inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000bb0a__entry__118">9</td>
<td class="entry" headers="ID-0000bb0a__entry__119">External
Impression</td>
<td class="entry" headers="ID-0000bb0a__entry__120">An impression from
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000bb0a__entry__118">10</td>
<td class="entry" headers="ID-0000bb0a__entry__119">External Click</td>
<td class="entry" headers="ID-0000bb0a__entry__120">A click from a click
tracker.</td>
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

      
    - <span id="ID-0000bb0a__d10e107">**Export, send results via
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
6.  <span id="ID-0000bb0a__d10e136">Click Run
    report to send your report request.





Related Topics

- <a href="working-with-insertion-orders.html" class="xref">Working With
  Insertion Orders</a>
- <a href="reporting-guide.html" class="xref">Reporting Guide</a>
- <a href="network-reporting.html" class="xref"><span
  class="ph">Network Reporting</a>
- <a href="network-revenue-and-billing-your-clients.html"
  class="xref">Network Revenue And Billing Your Clients</a>
- <a href="billing.html" class="xref">Billing</a>
- <a href="working-with-line-items.html" class="xref">Working With Line
  Items</a>






