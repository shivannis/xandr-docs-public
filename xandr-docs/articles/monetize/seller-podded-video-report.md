---
Title : Seller Podded Video
<b>Note:</b> This feature is currently in
**Alpha**. It is still under development and may be subjected to changes
---


# Seller Podded Video





<b>Note:</b> This feature is currently in
**Alpha**. It is still under development and may be subjected to changes
without notice. Contact your Xandr Account Representative to get it
enabled.



The **Seller Pod Analytics** report shows metrics for groups of ads (aka
pods) delivered sequentially in between segments of non-commercial video
programming.

You can use this report to determine the following:

- The number of pods that were sent for Monetization
- The average number of impressions sold per pod
- The average estimate of revenue per pre-roll in comparison to mid-roll
  pod
- The average seconds sold per pod
- The fill rate in seconds
- The number of opportunities to serve impressions if a pod was unfilled

>

## Timeframe

All dates and times are given in UTC.

The `report_interval` field in the JSON request can be set to one of the
following:

- Custom
- Today
- Yesterday
- Last 7 Days(not including today)
- Month to Date
- Last Month
- Quarter to Date



To run a report for a custom time frame, set the `Start Date` and
`End Date` fields in your report request. For more details about these
fields, see
<a href="https://wiki.xandr.com/display/api/Report+Service" class="xref"
target="_blank">Report Service</a>.

>

## Intervals

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.

- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



>

## Data Retention Period

This report's data is retained for 420 days. For more information about
how quickly reporting data is processed, see <a
href="monetize_monetize-standard/availability-of-reporting-data.md"
class="xref" target="_blank">Availability of Reporting Data</a>.



>

## Dimensions



<table
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3"
class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Advertiser
Default Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">EUR</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
default currency of the advertiser in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Advertiser
Default Exchange Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Application</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
application name</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Billing
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
transaction currency that the buyer used to purchase this impression.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Billing
Currency Exchange Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Browser</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">webOS Browser (33)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
name of the browser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Call
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
type of handler that was used to send the impression to Xandr (e.g.,
ttj, ut, mob, ptv, openrtb)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">City</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">Vienna</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
city in which the user is located.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">"France"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
country of the user's location, both name and code, in the format
"France". The string "250" can appear in cases where we don't know the
country or if the country doesn't map correctly to a location in our
database.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Device
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">"set top box"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"><p>The
type of device on which the impression was served. Possible values
are:</p>
<ul>
<li>"desktops &amp; laptops"</li>
<li>"tablets"</li>
<li>"mobile phones"</li>
<li>"tv"</li>
<li>"game consoles"</li>
<li>"set top box"</li>
<li>"media players"</li>
<li>"other devices"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Inventory
URL</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
URL of the inventory or application package.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">German (6)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
language of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Max
Ad Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">Max
duration of an individual ad within the pod</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Max
Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">Max
duration of the entire pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Max
Number Ads</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
maximum number of ads for the pod the slot served in.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Max
Vast Version</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">4.0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
max VAST version supported for the slot.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Member
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
currency of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Member
Exchange Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">1.24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Min
Ad Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
minimum duration allowed for an individual ad in the pod</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Operating
System</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
name of the operating system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Operating
System Family</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
name of the operating system family</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">My Placement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
placement name</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Placement
Group</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">My Placement Group</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
placement group name</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Placement
Set</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
ID of the placement set</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Playback
Method</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">auto_play_sound_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Player
Height</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
height of the player in pixels</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Player
Width</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
width of the player in pixels</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Pod
has bumpers</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">True
if the pod is configured to use bumper ads</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">My Publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
publisher name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Publisher
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
default currency of the publisher in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Publisher
Exchange Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Region</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Supply
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Supports
Vpaid</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">True
if the player supported VPAID creatives</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Delivery Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
type of streaming content delivery: Video on Demand (VOD) or Live.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
length of the video content in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Genre</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
main genre of the program on which the ad will be played, for example,
Cooking, Horror, News, or Football.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
language of the content</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Program Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
format of the video program, for example, Movie, Series, Special, Show,
Event, or Clip.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Content Rating</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
publisher-identified audience group for which the content is rated, for
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__1">Video
Context</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__4"><code
class="ph codeph">Pre-Roll</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-925ecfbf-fc88-412f-814e-5d192d14e6d3__entry__5">The
type of the video creative. See <a
href="xandr-api/network-advertiser-video-analytics.md#NetworkAdvertiserVideoAnalytics-VideoContext"
class="xref" target="_blank">Video Context</a> for possible values.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">

>

## Metrics

>

\* Filter by comma separated IDs only.



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33"
class="table frame-all">
<caption><span class="table--title-label">Table 2. <span
class="title"></caption>
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th
id="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Booked
Revenue Dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">578.98</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">booked_revenue_dollars</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
revenue generated from managed line items.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">3445</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of clicks recorded. For video we record clicks from Microsoft Invest
and external DSPs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Completion
rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.85</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">video_completions / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of impressions that resulted in a completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Completions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">8458</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">completions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a completion event</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">30.56</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">total_revenue / total_imps * 1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
average revenue per 1000 impressions sold</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">CTR</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">clicks / total_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
average number of clicks generated on your inventory from all impression
types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Error
rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">errors / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
rate of errors per impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Errors</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">523</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">errors</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported an error before the impression
was counted</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">First
quartile rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.94</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">first_quartiles / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of first quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">First
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">9101</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">first_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a 25% complete event</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Impression
Seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">6976</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">creative_duration * imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of seconds served on impressions. If you are using a house
line item to report unsold opportunities then you may wish to filter or
add impression type as a dimension to separate sold and unsold
impression seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Impression
Seconds Kept</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">34587</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">impression_seconds_kept</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of seconds resold via managed line items.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Impression
seconds per pod</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">25.9</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">impression_seconds / pod_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
average duration of impressions sold per ad break.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Impression
Seconds Resold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">435435</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">impression_seconds_resold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of seconds resold via deals or open exchange.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Impression
Seconds Unsold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">6442</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">impression_seconds_unsold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of seconds unsold tracked by house line items which have
the default impression type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Imps
(Kept)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">2340</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">imps_kept</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of impressions sold by managed line items.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Imps
(Resold)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">324</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">imps_resold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of impressions sold to other buyers via open exchange or
deals.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Imps
(Unsold)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">4523</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">imps_unsold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of impressions that have blank, default or PSA impression
types. If you are using house line items to count unsold impressions,
these will be recorded here.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Percent
Pods 1 Imp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.43</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">(sum(pod_count) - sum(pod_no_imps)) / sum(pod_count)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
percentage of ad breaks (pods) sent to Xandr for monetization that had
at least 1 impression delivered within them.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Percent
Pods 1 response</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.34</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">(sum(pod_count) - sum(pod_no_responses)) / sum(pod_count)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
percentage of ad breaks (pods) sent to Xandr for monetization that had
at least 1 response returned within them.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Available Seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">4534532</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">pod_available_seconds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
maximum duration that could deliver within the ad breaks (pods).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Count</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">5345</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">pod_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of ad breaks (pods) sent to Xandr for monetization. If multiple
ad breaks are sent in one request, e.g. using cue points, then this will
record the total number of ad breaks, not ad requests sent to
Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Fill Rate Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.55</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">sum(impression_seconds_resold + impression_seconds_kept) / sum(max_duration * pod_count)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total resold and kept seconds divided by the maximum duration that could
deliver within the ad breaks (pods).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Fill Rate Slots</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.28</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">sum(imps_kept + imps_resold) / sum(imps_resold + imps_kept + imps_unsold)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total resold and kept impressions divided by the total impressions
served. This metric can be used when a house line item is being used to
track unsold impressions as default impression types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
No Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">34</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">pod_no_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of ad breaks where no kept, resold or default impressions were
recorded in any slot in the pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Slot Opportunities</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">43423</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">sum(unmatched_min_slot_opportunities) + sum(imps_resold + imps_kept + imps_unsold)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">How
many impressions were delivered plus the total remaining opportunities
based on the unfilled duration of the pod and the minimum ad
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pod
Total Max Slots</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">464544</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">max_number_ads * pod_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
maximum number of slots that it would be possible to serve across
pods.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Poda
with 1 response or more</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">453254</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">sum(pod_count) - sum(pod_no_responses)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of ad breaks (pods) that have at least 1 creative response
within them.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Pods
with 1 impression or more</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">4534</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">pod_count - pod_no_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of ad breaks where there was at least 1 impression recorded</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Reseller
Revenue Dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">8370</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">reseller_revenue_dollars</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total revenue generated from open exchange and deals.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Revenue
per available second</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">total_revenue / (max_duration * pod_count)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
unit revenue in terms of seconds available to sell.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Revenue
per click</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.20</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">total_revenue / clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
revenue generated per click event recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Revenue
per pod mili</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">99.12</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">total_revenue / pod_count * 1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
average revenue per ad break.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Revenue
per second sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.5</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">total_revenue / impression_seconds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
revenue per second resold and kept.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Second
quartile rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.90</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">second_quartiles / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of second quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Second
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">8912</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">second_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a 50% complete event</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Seconds
per impression</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">6.8</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">sum(impression_seconds_resold + impression_seconds_kept + impression_seconds_unsold) / sum(imps_resold + imps_kept + imps_unsold)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total seconds on all impressions divided by the total number of
seconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Skip
rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">skips / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of skips divided by the number of impressions recorded</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Skips</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">85</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">skips</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a skip event</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Start
rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.98</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">starts / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of starts divided by the number of impressions recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Started
Video Completion Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.98</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">video_completions / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of video starts that resulted in a completion</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">9236</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a start event</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Third
quartile rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">0.87</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">third_quartiles / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of third quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Third
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">8646</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">third_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
number of times the video player reported a 75% complete event</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Total
Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">453456</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">imps_kept + imps_resold + imps_unsold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total number of impressions recorded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Total
Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">324.0</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">booked_revenue_dollars + reseller_revenue_dollars</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">The
total revenue resold and kept.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__1">Unmatched
min slot opportunities</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__3">5454</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__4"><code
class="ph codeph">unmatched_min_slot_opportunities</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-podded-video__table-bc3c9fd1-1528-4b80-8336-d6e4766b4d33__entry__5">How
many unfilled slot opportunities there were based on the duration filled
and the minimum possible ad duration. When minimum ad duration is not
set, or equals zero, this value is calculated with a minimum ad duration
of 15 seconds.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 2.
<span class="title">



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
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
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
    

    <b>Warning:</b> The more dimensions you
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
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="seller-podded-video__d10e107">**Export, send results via
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
6.  <span id="seller-podded-video__d10e136">Click
    Run report to send your report
    request.






