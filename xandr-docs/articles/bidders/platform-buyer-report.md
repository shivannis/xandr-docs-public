---
Title : Platform Buyer Report
Description : The Run Report tab is where you
ms.date : 10/28/2023
configure the type of report you want to run. The **Platform Buyer
---


# Platform Buyer Report



The Run Report tab is where you
configure the type of report you want to run. The **Platform Buyer
Report** is displayed by default when you access the Run Report
tab. This report has analytics/transaction data, and allows you to drill
down into very specific dimensions.

The API documentation for the **Platform Buyer Report** is located <a
href="bidder-platform-buyer-report.md"
class="xref" target="_blank">here</a>.

Select details to include in your report in the follow sections of
the Run Report tab



## Basic

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000081a3__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-000081a3__entry__3"
class="entry colsep-1 rowsep-1">Options</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__1"><strong>Type</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__2">Select the type of report you would like
to use based on the data you need.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__3"><ul>
<li>Platform Buyer Report (default)</li>
<li><a href="bidder-billing-report.md" class="xref">Bidder Billing
Report</a></li>
<li><a href="bidder-bid-error-report.md" class="xref">Bidder Bid Error
Report</a></li>
<li><a href="completed-creatives-audits-report.md"
class="xref">Completed Creatives Audits Report</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__1"><strong>Range</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__2">Select the date range you would like to
include for the report.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__3"><ul>
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
headers="ID-000081a3__entry__1"><strong>Interval</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__2">Select the time interval you would like
the data to be broken out by. Selecting "cumulative" means there will be
no time breakout in your report.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__3"><ul>
<li>Hourly</li>
<li>Daily</li>
<li>Monthly</li>
<li>Cumulative</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__1"><strong>Time Zone</strong> (drop-down
menu)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__2">Select the time zone you would like your
data to be represented in.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__3">All
24 global time zones</td>
</tr>
</tbody>
</table>





## Metrics

Select the **metrics** you want to be displayed in the report. Click the
Edit button on the right to
select/deselect.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__16"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000081a3__entry__17"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Imps</strong> (bought)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
total number of impressions bought.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Viewable Imps</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
number of measured impressions that were viewable, per the IAB
Viewability definition, which states that an impression is viewable if
50% of the pixels are in-view during one consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>View-Measured
Imps</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
total number of impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Measurement Rate</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
percentage of impressions measured for viewability out of the total
number of impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Viewability Rate</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
percentage of impressions that were viewable out of the total number of
impressions measured for viewability. (Viewable Imps / View Measured
Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Buyer Spend</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
amount the buyer pays for the cost of media.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Buyer Spend Buyer
Currency</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
buyer's total spend in their selected currency. For a list of supported
currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__16"><strong>Buyer eCPM</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__17">The
buyer's cost per impression expressed in eCPM.</td>
</tr>
</tbody>
</table>





## Filters 

Select the **filters** you want to be used to generate the report. Click
the Edit button on the right to
select/deselect.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__34"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000081a3__entry__35"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Buyer Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by the internal ID of
the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Creative</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by ID of the creative
that served on the impression where the "event" you're counting
occurred. For more information about creatives, see the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by internal ID of the
seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by internal ID of the
publisher, which is one level more detailed than seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Content Category</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by content category
that the inventory where the impression occurred was associated with.
For more information about content categories, see the <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Tag</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by specific placements
from a seller member. Most granular level of publisher inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Buyer Currency</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by the buyer member's
selected currency. For a list of supported currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Creative Size</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by the size of the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Impression Type</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by the type of
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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Country</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by the country the
impression originated from</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__34"><strong>Site</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__35">Select to filter by site, which is a
group of tags (publisher placements)</td>
</tr>
</tbody>
</table>





## Dimensions 

- **Include IDs as separate column** (checkbox to the left)

Select the **dimensions** you want to be used to generate the report.
Click the **check box** on the left to select/deselect.
Select Include IDs as separate column
if you would like the object ID listed as a separate column in the
report.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__58"
class="entry colsep-1 rowsep-1">Metric</th>
<th id="ID-000081a3__entry__59"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Buyer</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">The
internal member ID of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Buyer Seat Code</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Creative</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">ID
of the creative that served on the impression where the "event" you're
counting occurred. For more information about creatives, see the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Seller Member</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Internal ID and name of the seller
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Publisher</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Internal ID of the publisher, which is
one level more detailed than seller member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Content Category</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Category that the inventory where the
impression occurred was associated with. For more information about
content categories, see the <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Tag</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Specific placements from a seller
member. Most granular level of publisher inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Buyer Currency</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Buyer member's selected currency. For a
list of supported currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Creative Size</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Size of the creative served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Impression Type</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__59">Type of impression served. Possible
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
headers="ID-000081a3__entry__58"><strong>Supply Type</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">The
type of supply impressions are originating from. Possible values:
<ul>
<li>0=web</li>
<li>1=mobile web</li>
<li>2=mobile app</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Buyer Seat Name</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">The
display name for the buyer seat code</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__58"><strong>Country</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__59">The
country the impression originated from</td>
</tr>
</tbody>
</table>





## Delivery

This section determines how the report will be delivered to you as well
as any reports you would like to save.

**Options on how to run the report** (select one):

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__86" class="entry colsep-1 rowsep-1">Run now,
show results in screen</th>
<th id="ID-000081a3__entry__87" class="entry colsep-1 rowsep-1">Run in
background, notify me when results are ready to view</th>
<th id="ID-000081a3__entry__88" class="entry colsep-1 rowsep-1">Export,
send results via email</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__86">This will display the report in the
View Report tab of the report
screen. Recommended delivery format for reports with less dimensions
and/or metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__87">Report will run in the background and a
pop-up will notify you when the report is complete. Access complete
report from Your Reports tab.
Recommended delivery format for reports with less dimensions and/or
metrics.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__88">Report will be sent to the email
included in the text box. Use the <strong>drop down option</strong> to
select the format of the file to be sent via email. Recommended delivery
format for larger reports with lots of dimensions and/or metrics.</td>
</tr>
</tbody>
</table>

**Options to save the report** (Select both or one of the options): 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081a3__entry__92" class="entry colsep-1 rowsep-1">Add to
scheduled reports</th>
<th id="ID-000081a3__entry__93" class="entry colsep-1 rowsep-1">Save as
report template</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000081a3__entry__92">If
there is a report that you want every day, week, or month:
<ul>
<li>Configure what you want that report to look like.</li>
<li>Click Add to scheduled
reports.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081a3__entry__93">This allows you to configure different
types of templates of reports that you plan on running frequently, or
slightly modifying.
<p>Enter the name of the report in the <span
class="keyword wintitle">Report Name text box.</p></td>
</tr>
</tbody>
</table>





## Run Report

After your selections are made, click Run
Report to run the report. The View
Report screen will automatically be accessed, where the report
results are displayed.





## Related Topics

- <a
  href="reporting-screen.md"
  class="xref" target="_blank">Reporting Screen</a>
- <a
  href="bidder-billing-report.md"
  class="xref" target="_blank">Bidder Billing Report</a>
- <a
  href="bidder-bid-error-report.md"
  class="xref" target="_blank">Bidder Bid Error Report</a>
- <a
  href="completed-creatives-audits-report.md"
  class="xref" target="_blank">Completed Creatives Audits Report</a>
- <a
  href="your-reports.md"
  class="xref" target="_blank">Your Reports</a>






