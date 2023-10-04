---
Title : Selling Billing Report
Description : This report allows you to manage internal invoicing for your publishers
across both managed and third-party selling.
---


# Selling Billing Report





This report allows you to manage internal invoicing for your publishers
across both managed and third-party selling.

For a detailed discussion of booked revenue, media cost, profit, and
using your billing report, see
<a href="network-revenue-and-billing-your-clients.html"
class="xref">Network Revenue and Billing Your Clients</a>.

**Use this report to understand your Invoice:** If you would like to use
this report to analyze your invoice, see
<a href="understanding-your-invoice.html" class="xref"
title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
Your Invoice</a>.

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
<th id="ID-000001b1__entry__1" class="entry">Column</th>
<th id="ID-000001b1__entry__2" class="entry">Filter?</th>
<th id="ID-000001b1__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Buyers</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The buyer of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Curator</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The curator of this
impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Advertiser</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The advertiser that
purchased the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Publisher</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The publisher on whose
inventory the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Publisher ID</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The external code
associated with a publisher.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Selling Currency</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause the <strong>Resold Revenue</strong> and
<strong>Seller Media Cost</strong> metrics to be displayed in the
selling currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Country</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Country of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Insertion Order</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The insertion order of
this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Impression Type</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">See <a
href="#ID-000001b1__IT-001" class="xref">Impression Types</a> below for
definitions of the different types of impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Buyer Cleared</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Whether or not the
buyer pays the seller or curator directly for the cost of media.
<blockquote>
<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">0</td>
<td class="entry">Xandr acts as the clearing
house, collecting the cost of media from the buyer and paying the
seller.</td>
</tr>
<tr class="even row">
<td class="entry">1</td>
<td class="entry">Xandr does not clear cash; the
buyer pays the seller directly for the cost of media.</td>
</tr>
<tr class="odd row">
<td class="entry">-1</td>
<td class="entry">Dummy value for unbilled activity.</td>
</tr>
</tbody>
</table>
</blockquote></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Curator Cleared</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Whether or not the
seller receives the reseller revenue from Xandr
or the curator.
<blockquote>
<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">0</td>
<td class="entry">The seller receives the reseller revenue from <span
class="ph">Xandr.</td>
</tr>
<tr class="even row">
<td class="entry">1</td>
<td class="entry">The seller receives the reseller revenue from the
curator.</td>
</tr>
<tr class="odd row">
<td class="entry">-1</td>
<td class="entry">Dummy value for unbilled activity.</td>
</tr>
</tbody>
</table>
</blockquote></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Deal ID</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The deal associated
with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Deal Type</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The deal type
associated with the impression. Possible values are:
<ul>
<li>Private Marketplace</li>
<li>First Look</li>
<li>Programmatic Guaranteed</li>
<li>Curated</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Is Deal</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Is there any deal
associated with the impression. Different from 'Deal' which is the
actual deal id</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Auction Charges
Available</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Indicates if there are
charges from the auction associated with the impression (2-step
pricing).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Media Type
(Billing)</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">The video-specific
media type classification for billing only. If you don't have
video-specific pricing, this field is irrelevant. Possible values are
<ul>
<li>--</li>
<li>Non-Video</li>
<li>Video (Hosted)</li>
<li>Video (Non-Hosted)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__1">Is Cross Seat
Activity</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Only relevant if you
have more than one member/seat on the Xandr
platform. If you do, this field allows you to know whether the activity
was associated with transactions between members you manage and
therefore simplify the reconciling of their invoices.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__1">Is Claims
Activity</td>
<td class="entry" headers="ID-000001b1__entry__2">Yes</td>
<td class="entry" headers="ID-000001b1__entry__3">Is adjustment made
from Invalid Trafffic (IVT) claims.</td>
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
<th id="ID-000001b1__entry__70" class="entry">Column</th>
<th id="ID-000001b1__entry__71" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Billable Imps</td>
<td class="entry" headers="ID-000001b1__entry__71">The total number of
impressions billed to the client.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Clicks</td>
<td class="entry" headers="ID-000001b1__entry__71">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Conversions</td>
<td class="entry" headers="ID-000001b1__entry__71">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Reseller Revenue</td>
<td class="entry" headers="ID-000001b1__entry__71">The net revenue
generated through sales to buyers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Seller Media
Cost</td>
<td class="entry" headers="ID-000001b1__entry__71">The amount owed to
the publisher.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Ad Serving Fees</td>
<td class="entry" headers="ID-000001b1__entry__71">Cost of serving an ad
when the buyer and seller are within a network + cost of serving an ad
charged to the buyer when buying RTB.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Ad Serving Fees
(Non-Hosted Video)</td>
<td class="entry" headers="ID-000001b1__entry__71">Fees typically
charged for Kept, Default, PSA, and blank impressions that served a
non-hosted video creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Filtered
Requests</td>
<td class="entry" headers="ID-000001b1__entry__71">The total number of
Blacklisted or Fraud impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Gross Seller
Revenue</td>
<td class="entry" headers="ID-000001b1__entry__71">The gross revenue
generated through sales to buyers (before deductions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">SASC Deduction</td>
<td class="entry" headers="ID-000001b1__entry__71">The platform charges
for services taken at time of auction.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">SASC Fees</td>
<td class="entry" headers="ID-000001b1__entry__71">The platform charges
assessed for services.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Other Deductions</td>
<td class="entry" headers="ID-000001b1__entry__71">FX Margins taken at
time of auction.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Other Fees</td>
<td class="entry" headers="ID-000001b1__entry__71">FX Margins assessed
for services.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Bad Debt Fees</td>
<td class="entry" headers="ID-000001b1__entry__71">The charges assessed
for waiving sequential liability.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Bad Debt
Deductions</td>
<td class="entry" headers="ID-000001b1__entry__71">The charges for
waiving sequential liability taken at time of auction.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Net CPM</td>
<td class="entry" headers="ID-000001b1__entry__71">The total revenue per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__70">Gross CPM</td>
<td class="entry" headers="ID-000001b1__entry__71">The gross revenue per
1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__70">Conversions</td>
<td class="entry" headers="ID-000001b1__entry__71">The total number of
post-view and post-click conversions.</td>
</tr>
</tbody>
</table>



Impression Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000001b1__entry__108" class="entry">Value</th>
<th id="ID-000001b1__entry__109" class="entry">Name</th>
<th id="ID-000001b1__entry__110" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__108">1</td>
<td class="entry" headers="ID-000001b1__entry__109">Blank</td>
<td class="entry" headers="ID-000001b1__entry__110">No creative
served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__108">2</td>
<td class="entry" headers="ID-000001b1__entry__109">PSA</td>
<td class="entry" headers="ID-000001b1__entry__110">A public service
announcement served because no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__108">3</td>
<td class="entry" headers="ID-000001b1__entry__109">Default Error</td>
<td class="entry" headers="ID-000001b1__entry__110">A default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__108">4</td>
<td class="entry" headers="ID-000001b1__entry__109">Default</td>
<td class="entry" headers="ID-000001b1__entry__110">A default creative
served because no campaigns bid or no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__108">5</td>
<td class="entry" headers="ID-000001b1__entry__109">Kept</td>
<td class="entry" headers="ID-000001b1__entry__110">One of your managed
advertisers served a creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__108">7</td>
<td class="entry" headers="ID-000001b1__entry__109">RTB</td>
<td class="entry" headers="ID-000001b1__entry__110">The impression was
sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__108">8</td>
<td class="entry" headers="ID-000001b1__entry__109">PSA Error</td>
<td class="entry" headers="ID-000001b1__entry__110">A public service
announcement served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000001b1__entry__108">9</td>
<td class="entry" headers="ID-000001b1__entry__109">External
Impression</td>
<td class="entry" headers="ID-000001b1__entry__110">An impression from
an impression tracker.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000001b1__entry__108">10</td>
<td class="entry" headers="ID-000001b1__entry__109">External Click</td>
<td class="entry" headers="ID-000001b1__entry__110">A click from a click
tracker.</td>
</tr>
</tbody>
</table>



To Run Your Report

Follow these steps to run your report.

1.  1.  Select Reporting from the
        appropriate top menu (depending on how your account has been
        configured).
        1.  Or, from the Publishers top menu, click on
            Prebid
            Server Premium \>
            Analytics \>
            Prebid Server
            Analytics
    2.  Select the relevant report from the list. The
        Report screen shows the
        available filters, dimensions, and delivery options for the
        report. The selections you make here will determine what report
        data is delivered to you, and how.
        

        Important: For an explanation
        of how grouping and filtering work, see
        <a href="dimensions-metrics-filtering-and-grouping.html"
        class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

        
    3.  Select the relevant filters to limit the data displayed to just
        the information you want. For example, rather than running a
        report that shows impressions for all inventory sources, you may
        want to list results for just a select few. When you select a
        filter (by clicking Edit), a
        selection panel appears. Select items in the **Available** list
        (left), then click Add to
        include them in the **Chosen** list (right).
    4.  Group by Dimension. Grouping allows you to display rows of data
        in the order you prefer.
        

        Warning: The more dimensions
        you group by, the larger the data set that is returned. Larger
        data sets can take substantially longer to process. Be sure to
        group using only the dimensions you need.

        
    5.  Choose a delivery option. Once you've selected your filters and
        grouped by your chosen dimensions, you need to choose a delivery
        method. Available delivery methods include:
        - **Run now, show results in screen**: For smaller amounts of
          data, you may want to view the report as soon as possible in
          your browser. You can download the report in XLSX, CSV,
          Excel/TSV and JSON format. However, there is a limit of
          100,000 rows per report when downloading as XLSX and Excel
          file.
        - **Run in background, notify me when results are ready to
          view**: A popup notification will let you know when the report
          is ready to view or download.
          

          Tip: The maximum size of the
          report that can be downloaded from the UI is 100 MB. Also,
          there is a limit of 100,000 rows per report when downloading
          as XLSX and Excel file. If the size of the report is more than
          that, you can try to download it using the <a
          href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
          class="xref" target="_blank">API</a> for that reporting
          service (The limit here is 10 million rows).

          
        - <span id="ID-000001b1__d10e107">**Export, send results via
          email**: Run the report in the background and email the
          results to one or more email addresses.
        - **Save as report template**: Save your selected report
          settings so that you can run this report again in the future.
          You can name this template using the text entry field under
          Name this report (its
          checkbox is auto-selected when you choose this option). A
          saved report can be rerun from the
          Your Reports screen.
        - **Add to scheduled reports**: Run this report automatically at
          specified times and have it sent to one or more email
          addresses.
        - **Name this report**: Give this report with its current
          settings a name for future reference.
    6.  <span id="ID-000001b1__d10e136">Click
        Run report to send your report
        request.





Related Topics

- <a href="working-with-insertion-orders.html" class="xref">Working with
  Insertion Orders</a>
- <a href="reporting-guide.html" class="xref">Reporting Guide</a>
- <a href="network-reporting.html" class="xref">Network Reporting</a>
- <a href="network-revenue-and-billing-your-clients.html"
  class="xref">Network Revenue and Billing Your Clients</a>
- <a href="billing.html" class="xref">Billing</a>
- <a href="working-with-line-items.html" class="xref">Working with Line
  Items</a>
- <a href="working-with-campaigns.html" class="xref">Working with
  Campaigns</a>






