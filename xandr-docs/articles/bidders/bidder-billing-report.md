---
Title : Bidder Billing Report
Description : The **Bidder Billing Report** is where bidders can pull
billing/financial data, and drill down into very specific dimensions.
---


# Bidder Billing Report



The **Bidder Billing Report** is where bidders can pull
billing/financial data, and drill down into very specific dimensions.

The API documentation for the **Bidder Billing Report** is located <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-billing-report-api.html"
class="xref" target="_blank">here</a>.



## Basic

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000083fd__entry__2"
class="entry colsep-1 rowsep-1">Description/Options</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__1"><strong>Type</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__2"><ul>
<li><a href="platform-buyer-report.html" class="xref">Platform Buyer
Report</a> (default)</li>
<li>Bidder Billing Report</li>
<li><a href="bidder-bid-error-report.html" class="xref">Bidder Bid Error
Report</a></li>
<li><a href="completed-creatives-audits-report.html"
class="xref">Completed Creatives Audits Report</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__1"><strong>Range</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__2"><ul>
<li>Custom</li>
<li>Current Hour</li>
<li>Today</li>
<li>Yesterday</li>
<li>Last 48 Hours</li>
<li>Last 7 Days</li>
<li>Month to Date</li>
<li>Month to Yesterday</li>
<li>Last Month</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__1"><strong>Interval</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__2"><ul>
<li>Hourly</li>
<li>Daily</li>
<li>Monthly</li>
<li>Cumulative</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__1"><strong>Time Zone</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__2">Select the appropriate time zone.</td>
</tr>
</tbody>
</table>





## Metrics

Select the **metrics** you want to be displayed in the report. Click
the Edit button on the right to
select/deselect.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__11"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000083fd__entry__12"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__11"><strong>Imps</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__12">The
total number of impressions bought.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__11"><strong>Buyer eCPM</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__12">The
buyer's cost per impression expressed in eCPM.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__11"><strong>Buyer Media Cost</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__12">The
amount the buyer pays for the cost of media.</td>
</tr>
</tbody>
</table>





## Filters

Select the **filters** you want to be used to generate the report. Click
the Edit button on the right to
select/deselect.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__19"
class="entry colsep-1 rowsep-1">Filter</th>
<th id="ID-000083fd__entry__20"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Buyer Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by the internal ID of
the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Deal</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by specific Deals set
up between the Bidder and Seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by internal ID of the
seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by internal ID of the
publisher, which is one level more detailed than seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Buying Currency</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by the buyer member's
selected currency. For a list of supported currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Impression Type</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by the type of
impression served. Possible values:
<ul>
<li>1 = blank</li>
<li>2 = PSA</li>
<li>3 = default error</li>
<li>4 = default</li>
<li>5 = kept</li>
<li>6 = resold</li>
<li>7 = RTB</li>
<li>8 = PSA resulting from a default error</li>
<li>9 = external impression</li>
<li>10 = external click</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__19"><strong>Country</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__20">Select to filter by the country the
impression originated from.</td>
</tr>
</tbody>
</table>





## Dimensions 

- **Include IDs as separate column** (checkbox to the left)

Select the **dimensions** you want to be used to generate the report.
Click the **check box** on the left to select/deselect.
Select Include IDs as separate
column if you would like the object ID listed as a separate column in
the report.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__35"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000083fd__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Buyer Member</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__36">The
internal ID of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Buyer Seat Code</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__36">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Buyer Seat Name</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__36">The
display name for the buyer seat code</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Deal</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__36">Deal name and ID of the deal the
impression is attributed to. Further details about deals can be found in
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__36">Internal ID and name of the seller
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__36">Internal ID of the publisher, which is
one level more detailed than seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Buying Currency</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__36">Buyer member's selected currency. For a
list of supported currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Impression Type</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__36">Type of impression served. Possible
values:
<ul>
<li>1 = blank</li>
<li>2 = PSA</li>
<li>3 = default error</li>
<li>4 = default</li>
<li>5 = kept</li>
<li>6 = resold</li>
<li>7 = RTB</li>
<li>8 = PSA resulting from a default error</li>
<li>9 = external impression</li>
<li>10 = external click</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__35"><strong>Country</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__36">The
country the impression originated from.</td>
</tr>
</tbody>
</table>





## Delivery

This section determines how the report will be delivered to you as well
as any reports you would like to save.

Options on how to run the report (select one):

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__55" class="entry colsep-1 rowsep-1">Run now,
show results in screen</th>
<th id="ID-000083fd__entry__56" class="entry colsep-1 rowsep-1">Run in
background, notify me when results are ready to view</th>
<th id="ID-000083fd__entry__57" class="entry colsep-1 rowsep-1">Export,
send results via email </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__55">This will display the report in the
View Report tab of the report
screen. Recommended delivery format for reports with less dimensions
and/or metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__56">Report will run in the background and a
pop-up will notify you when the report is complete. Access complete
report from Your Reports tab.
Recommended delivery format for reports with less dimensions and/or
metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__57">Report will be sent to the email
included in the text box. Use the <strong>drop down option</strong> to
select the format of the file to be sent via email. Recommended delivery
format for larger reports with lots of dimensions and/or metrics.</td>
</tr>
</tbody>
</table>

Options to save the report (Select both or one of the options): 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000083fd__entry__61" class="entry colsep-1 rowsep-1">Add to
scheduled reports</th>
<th id="ID-000083fd__entry__62" class="entry colsep-1 rowsep-1">Save as
report template</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000083fd__entry__61">If
there is a report that you want every day, week, or month:
<ul>
<li>Configure what you want that report to look like.</li>
<li>Click Add to scheduled
reports.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000083fd__entry__62">This allows you to configure different
types of templates of reports that you plan on running frequently, or
slightly modifying.
<p>Enter the name of the report in the Report
Name text box.</p></td>
</tr>
</tbody>
</table>





## Run Report

After your selections are made, click Run
Report to run the report. The View Report screen will
automatically be accessed, where the report results are displayed.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/reporting-screen.html"
  class="xref" target="_blank">Reporting Screen</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-buyer-report.html"
  class="xref" target="_blank">Platform Buyer Report</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-bid-error-report.html"
  class="xref" target="_blank">Bidder Bid Error Report</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/completed-creatives-audits-report.html"
  class="xref" target="_blank">Completed Creatives Audits Report</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/your-reports.html"
  class="xref" target="_blank">Your Reports</a>






