---
Title : Prebid Server Premium Health Analytics Report
Description : The Prebid Server Premium Health Analytics Report allows users to
analyze data related to bid requests and transactions with their
configured demand partners. This report is most useful in
---


# Prebid Server Premium Health Analytics Report







The Prebid Server Premium Health Analytics Report allows users to
analyze data related to bid requests and transactions with their
configured demand partners. This report is most useful in
troubleshooting known issues and proactively identifying optimization
opportunities.



Note: The Health Analytics Report is
based on **sample data multiplied to estimate the full volume of PSP
activity**. It is not intended to be used for delivery and revenue
reporting. The
<a href="prebid-server-premium-seller-analytics.html" class="xref"
title="The Prebid Server Premium Seller Analytics Report contains performance information on configured Prebid Server Premium (PSP) demand partners.">Prebid
Server Premium Seller Analytics Report</a> and other
<a href="reporting-guide.html" class="xref">Xandr
Monetize reports</a> should be used for those purposes.



The data in this report can also be accessed via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service API</a>. See Prebid Server
Premium Health Analytics API documentation <a
href="https://docs.xandr.com/bundle/xandr-api/page/prebid-server-premium-health-analytics.html"
class="xref" target="_blank">here</a>.







## Time Frame

**Ranges**

<div id="prebid-server-premium-health-analytics-report__p-94c20268-2e57-4e28-813c-0e0edf175b3a"
>

Time ranges define the time period of the data extracted for the report.
Following is a complete list of applicable time ranges available for
this report.

- Custom: User defined fixed range.
- Today
- Last 24 Hours
- Yesterday
- Last 48 Hours
- Last 2 Days
- Last 7 Days
- Last 14 Days
- Month To Date
- Month To Yesterday
- Last 30 Days
- Last Month
- Quarter to Date
- Lifetime



**Intervals**

<div id="prebid-server-premium-health-analytics-report__p-01843663-559a-402f-ad21-23fb37b70e02"
>

Intervals determine how your data is grouped together into rows in the
report response. Following is a complete list of intervals available for
this report.

- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



**Timezone**

Select the appropriate timezone from the dropdown list.





## Data Retention Period

Data in this report is retained for the past 33 days of activity.





## Dimensions



<table
id="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1"
class="entry align-center colsep-1 rowsep-1">Column</th>
<th
id="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2"
class="entry align-center colsep-1 rowsep-1">Filter?</th>
<th
id="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Publisher</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
publisher on whose inventory the request originated.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Placement
Group</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
placement group (a collection of placements) that includes the placement
through which the request originated.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Placement</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
name and ID of the placement through which the request originated.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Inventory
URL</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
URL of the domain or app on which the request originated.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Ad
Size</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
dimensions of the ad slot.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Supply
Type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
category of inventory (web, mobile web, or app). App includes CTV and
mobile.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Device
Type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
category of device. For example, desktops, mobile phones, etc.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Media
Type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
category of creative on transacted impressions. For example: banner,
video, native.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Allowed
Media Type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">No</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
category of creative enabled by the publisher on the Monetize placement.
For example: banner, video, native.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Device
OS Family</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
operating system of the device. For example, Microsoft Windows, Apple
iOS, etc.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Device
OS Extended</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
specific version of the operating system. For example, iOS 16.0.0.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Device
Browser</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
browser used on the device. For example, Chrome, Safari, etc.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Browser
Code Name</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">No</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
specific version of the browser.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">SDK
Version</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
version of the software development kit present in the app.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Application</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
specific application used on the device.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Datacenter</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
data center used to route the request to demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Country
Name</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
name of the country in which the impression served. For example, United
States.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Bidder</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">No</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
bidder (Prebid Server).</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Demand
Partner</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
partner to which the request was sent and from which the response (if
any) was received.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">Bid
Error</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
category of error related to the bid response. For details, see the <a
href="prebid-server-premium-health-analytics-report.html#prebid-server-premium-health-analytics-report__ID-9620588314"
class="xref">Error Types</a> section below for more detail.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__1">External
Creative</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__2">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-5c366f95-299e-4daa-9b25-406168a49a2f__entry__3">The
external ID associated with the creative served.</td>
</tr>
</tbody>
</table>







## Metrics





Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table
id="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1"
class="entry align-center colsep-1 rowsep-1">Column</th>
<th
id="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Bid
Requests Sent</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of requests sent from Prebid Server Premium to demand
partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Bid
Responses Received</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of bid responses received by Prebid Server Premium from demand
partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Valid
Bids On Imps</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of bids received from demand partners that do not trigger errors,
have a creative ID, and have a bid above $0. There may be multiple bids
counted for each auction when multiple demand partners return bids.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Valid
Bids On Impression Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of valid bids divided by the number of bid requests sent to
demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Bids
Submitted to Ad Server</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2"><p>The
number of ad requests that had a valid Prebid bid that was not subject
to any additional Xandr rejections returned to
the ad server. This number is counted after the <span
class="ph">Xandr auction process that evaluates bids received
from all sources. The reduced volume between Valid Bids on Imps and this
metric could be due to creative requirements not being met, being outbid
by other bidders, or due to the option to <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/integrate-web-mobile-web-with-psp.html"
class="xref" target="_blank">send only the top bid back to the ad
server</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Bid
Errors</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of errors in bid responses from demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Bid
Errors Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of bid errors divided by the number of bid requests sent to
demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Timeout
Errors</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of errors where a demand partner did not respond within the
timeout limit. For more information on timeouts, see <a
href="add-or-edit-psp-global-settings.html" class="xref"
title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
or Edit PSP Global Settings</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Timeout
Errors Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of timeout errors divided by the number of bid requests sent to
demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">No
Bids</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of times demand partners did not bid on a request. This does not
include bid errors.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">No
Bid Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of times demand partners did not bid divided by the number of bid
requests sent to demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Average
Response Time</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
average time demand partners took to respond to bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">User
Matched Requests</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of requests where a user identifier was present. Note this metric
currently only includes cookies for web and mobile web.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">User
Matched Requests Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of user matched requests divided by the number of bid requests
sent to demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Imps
(delivered)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
number of impressions successfully delivered and ads rendered. Note this
report is based on sample log data multiplied to estimate the full
volume of PSP activity and does not represent final delivery.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Win
Rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">This
metric should only be used with the demand partner dimension applied. It
is the percentage of how many times a demand partner delivered an
impression when considering all opportunities a demand partner had to
win the auction. The calculation is the number of impressions delivered
divided by the number of bid requests sent to demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Total
Bid Price</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
sum of the bid values received from demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Average
Clear Price</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
sum of bid price for delivered impressions divided by the number of bid
requests sent.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__1">Total
Buyer Spend</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-48fbe81a-4a52-4b63-b574-933a4fc3be83__entry__2">The
media cost to buyers of impressions delivered.

Note: This report is based on sample
log data multiplied to estimate full volume of PSP activity and does not
represent final delivery.
</td>
</tr>
</tbody>
</table>





<div id="prebid-server-premium-health-analytics-report__ID-9620588314"
>

## Error Types



<table
id="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1"
class="entry align-center colsep-1 rowsep-1">Code</th>
<th
id="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"
class="entry align-center colsep-1 rowsep-1">Error</th>
<th
id="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
<th
id="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4"
class="entry align-center colsep-1 rowsep-1">Remedy</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">0</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">NONE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">No
error.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">None
needed.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">1</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">INTERNAL</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">There
is a server-side error from Demand Partner, such as a 400 status
code.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should work with Xandr to collect a specific
example code to share with Demand Partner for investigation.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">2</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">TIMEOUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Demand
Partner did not respond within the timeout limit.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Either
increase timeout settings to allow for a longer response time or contact
Demand Partner to inform them of the restriction. For more information
on timeouts, see <a href="add-or-edit-psp-global-settings.html"
class="xref"
title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
or Edit PSP Global Settings</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">3</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">CLIENT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Demand
Partner's Prebid Server adapter generated an error.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">For
significant quantities of this error type, Seller should contact <span
class="ph">Xandr support to diagnose issues by looking at the
internal Xandr logs. An example of this error
could be that video supply has been sent to an adapter that does not
support it.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">4</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">PARSE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Demand
Partner has formatted the bid response incorrectly.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should work with Xandr and Demand Partner to
determine and resolve the specific formatting issue.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">21</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">NO_BID_PRICE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">No
price received from Demand Partner.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should notify Demand Partner of the issue.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">22</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">NO_CREATIVE_ID</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">No
creative ID received from Demand Partner.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should notify Demand Partner of the issue.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">23</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">NEC_ERROR</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">The
bid was rejected during the Xandr auction
process.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">The
bid was successfully received from Demand Partner, but the bid was
rejected within the Xandr auction. Seller can
use the seller bid error report to diagnose specific rejections
occurring on their supply.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">24</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">CREATIVE_WRONG_SIZE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Demand
Partner is bidding with a creative size that doesn't match the tag
size.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should review the creative size and notify Demand Partner regarding the
mismatch.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">70</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">MEMBER_NOT_ELIGIBLE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Seller's
settings are blocking the Buyer's member from participating in the
auction.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should notify the buyer that they are currently blocked from
bidding.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">84</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">CATEGORY_REQ_WHITELIST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">The
category of the creative is sensitive and requires addition to the
allowlist.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should work with Buyer to determine if the creative warrants addition to
the allowlist.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">132</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">DYN_CREATIVE_INCOMPATIBLE_TYPE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Dynamic
ad-markup bidding is not supported for certain PSP demand partners that
require client-side rendering when a Seller doesn't support it.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should correct their setup to align with client-side rendering
requirements, on both supply and PSP sides.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__1">150</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__2"><code
class="ph codeph">SELLER_MEMBER_NO_CONTRACT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__3">Seller's
contract isn't set up properly.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-server-premium-health-analytics-report__table-11e99454-a97f-4ea0-9c4f-efec4c4893ca__entry__4">Seller
should work with Xandr to remedy the contract
issue.</td>
</tr>
</tbody>
</table>



Note: For additional possible error
codes, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a>.









## To Run your Report

Follow these steps to run your report.

<div id="prebid-server-premium-health-analytics-report__p-4193fc1e-4820-4407-b032-71e089847c1b"
>

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Health Analytics
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

      
    - <span id="prebid-server-premium-health-analytics-report__ITPL0000">**Export,
      send results via email**: Run the report in the background and
      email the results to one or more email addresses.
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
6.  <span id="prebid-server-premium-health-analytics-report__step-6">Click
    Run report to send your report
    request.







## Related Topics



- <a href="prebid-server-premium-seller-analytics.html" class="xref"
  title="The Prebid Server Premium Seller Analytics Report contains performance information on configured Prebid Server Premium (PSP) demand partners.">Prebid
  Server Premium Seller Analytics Report</a>
- <a href="reporting-guide.html" class="xref">Reporting Guide</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
  class="xref" target="_blank">Bid Error Codes</a>








