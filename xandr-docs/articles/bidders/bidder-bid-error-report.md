---
Title : Bidder Bid Error Report
Description : The **Bidder Bid Error Report** allows bidders to see the volume and
ms.date : 10/28/2023
types of bid errors that their bidders are generating when they bid.
---


# Bidder Bid Error Report



The **Bidder Bid Error Report** allows bidders to see the volume and
types of bid errors that their bidders are generating when they bid.




<b>Note:</b> The errors listed in the Bidder
Bid Error Report are considered **pre-auction** errors, meaning these
are bids reject prior to the start of the auction for a specific
impression.





This is meant to be a helpful troubleshooting tool. Here are a few
suggestions:

- Group your results by the **actual error**, to see what your most
  common errors are.
- If you are troubleshooting a specific area, add dimensions like
  **Seller Member**, **Ad Profile**, or
  Creative to understand exactly which
  options and which creatives are generating that error.
- Group the results by **Deal** – to troubleshoot errors for a specific
  deal.




<b>Note:</b> The API documentation for the
**Bidder Bid Error Report** is located <a
href="bidder-bid-error-report-api.md"
class="xref" target="_blank">here</a>.







## Basic

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c4__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000085c4__entry__2"
class="entry colsep-1 rowsep-1">Description/Options</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__1"><strong>Type</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__2"><ul>
<li><a href="platform-buyer-report.md" class="xref">Platform Buyer
Report</a> (default)</li>
<li><a href="bidder-billing-report.md" class="xref">Bidder Billing
Report</a></li>
<li>Bidder Bid Error Report</li>
<li><a href="completed-creatives-audits-report.md"
class="xref">Completed Creatives Audits Report</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__1"><strong>Range</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__2"><ul>
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
headers="ID-000085c4__entry__1"><strong>Interval</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__2"><ul>
<li>Hourly</li>
<li>Daily</li>
<li>Monthly</li>
<li>Cumulative</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__1"><strong>Time Zone (drop-down
menu)</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__2">Select the appropriate time zone.</td>
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
<th id="ID-000085c4__entry__11"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000085c4__entry__12"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__11"><strong>Error Count</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__12">The
amount of errors logged on the Xandr platform
over the timeframe selected (a randomly selected set of 1% of the errors
multiplied by 100 to account for the sampling).</td>
</tr>
</tbody>
</table>





## Filters 

Select the **filters** you want to be used to generate the report. Click
the Ed4it button on the right to
select/deselect.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c4__entry__15"
class="entry colsep-1 rowsep-1">Filter</th>
<th id="ID-000085c4__entry__16"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Buyer Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the Buyer Member
who is impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Deal</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the ID of the deal
impacted by the error (if Deal ID = 0 no deal was involved).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Creative Category</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the classification
assigned to both brands and creatives impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the Seller Member
who is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the ID of the
publisher, which is one level more granular than Seller Member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Brand</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the brand
registered in the Xandr system and associated
with the creative that is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Creative Size</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the size of the
creative impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Error</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the specific error
that occurred and was logged and the error message that describes the
error. More details on specific bid errors can be found <a
href="bid-error-codes.md"
class="xref" target="_blank">here</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Language</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the name and ID of
the language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__15"><strong>Technical
Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__16">Select to filter by the feature of the
creative such as whether it is an image, flash, video, is expandable,
etc. impacted by the error.</td>
</tr>
</tbody>
</table>





## Dimensions 

- **Include IDs as separate column** (checkbox to the left)

Select the dimensions you want to be used to generate the report. Click
the **check box** on the left to select/deselect.
Select Include IDs as separate
column if you would like the object ID listed as a separate column in
the report.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c4__entry__37"
class="entry colsep-1 rowsep-1">Dimensions</th>
<th id="ID-000085c4__entry__38"
class="entry colsep-1 rowsep-1">Definitions</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Buyer Member</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
Buyer Member who is impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Buyer Seat Code</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Buyer Seat Name</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
display name for the buyer seat code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Deal</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
ID of the deal impacted by the error (if Deal ID = 0 no deal was
involved).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Creative</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
Creative ID associated with the Buyer Member that is impacted by the
error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Creative Category</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">A
classification assigned to both brands and creatives impacted by the
error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">ID
and name of Seller Member who is impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
ID of the publisher, which is one level more granular than Seller
Member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Brand</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__38">Brand registered in the <span
class="ph">Xandr system and associated with the creative that is
impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Ad Profile</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
Ad Profile ID &amp; name of the Seller Member impacted by the
error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Creative Size</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__38">Size of the creative impacted by the
error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Error</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__38">Specific error that occurred and was
logged and the error message that describes the error. More details on
specific bid errors can be found <a
href="bid-error-codes.md"
class="xref" target="_blank">here</a> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Language</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__38">Name and ID of the language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__37"><strong>Technical
Attribute</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__38">The
feature of the creative such as whether it is an image, flash, video, is
expandable, etc. impacted by the error.</td>
</tr>
</tbody>
</table>

**Delivery**

This section determines how the report will be delivered to you as well
as any reports you would like to save.

Options on how to run the report (select one):

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c4__entry__67" class="entry colsep-1 rowsep-1">Run now,
show results in screen</th>
<th id="ID-000085c4__entry__68" class="entry colsep-1 rowsep-1">Run in
background, notify me when results are ready to view</th>
<th id="ID-000085c4__entry__69" class="entry colsep-1 rowsep-1">Export,
send results via email</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__67">This will display the report in the
View Report tab of the report
screen. Recommended delivery format for reports with less dimensions
and/or metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__68">Report will run in the background and a
pop-up will notify you when the report is complete. Access complete
report from Your Reports tab.
Recommended delivery format for reports with less dimensions and/or
metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__69">Report will be sent to the email
included in the text box. Use the drop down option to select the format
of the file to be sent via email. Recommended delivery format for larger
reports with lots of dimensions and/or metrics.</td>
</tr>
</tbody>
</table>

Options to save the report (Select both or one of the options): 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c4__entry__73" class="entry colsep-1 rowsep-1">Add to
scheduled reports</th>
<th id="ID-000085c4__entry__74" class="entry colsep-1 rowsep-1">Save as
report template</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000085c4__entry__73">If
there is a report that you want every day, week, or month:
<ul>
<li>Configure what you want that report to look like.</li>
<li>Click Add to scheduled
reports.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c4__entry__74">This allows you to configure different
types of templates of reports that you plan on running frequently, or
slightly modifying.
<p>Enter the name of the report in the Report
Name text box.</p></td>
</tr>
</tbody>
</table>





## Run Report

After your selections are made, click Run
Report to run the report. The View
Report screen will automatically be accessed, where the report
results are displayed.





## Related Topics

- <a
  href="bid-error-codes.md"
  class="xref" target="_blank">Bid Error Codes</a>
- <a
  href="reporting-screen.md"
  class="xref" target="_blank">Reporting Screen</a>
- <a
  href="platform-buyer-report.md"
  class="xref" target="_blank">Platform Buyer Report</a>
- <a
  href="bidder-billing-report.md"
  class="xref" target="_blank">Bidder Billing Report</a>
- <a
  href="completed-creatives-audits-report.md"
  class="xref" target="_blank">Completed Creatives Audits Report</a>
- <a
  href="your-reports.md"
  class="xref" target="_blank">Your Reports</a>






