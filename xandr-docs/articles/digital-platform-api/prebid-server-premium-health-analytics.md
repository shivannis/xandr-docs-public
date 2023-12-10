---
Title : Prebid Server Premium Health Analytics
Description : The Prebid Server Premium (PSP) Health Analytics Report allows users to
ms.date: 10/28/2023
ms.custom: digital-platform-api
analyze data related to bid requests and transactions with their
configured Demand Partners. This is most useful in troubleshooting known
---


# Prebid Server Premium Health Analytics





The Prebid Server Premium (PSP) Health Analytics Report allows users to
analyze data related to bid requests and transactions with their
configured Demand Partners. This is most useful in troubleshooting known
issues and proactively identifying optimization opportunities.



<b>Note:</b> The dashboard is based on
**sample data multiplied to estimate the full volume of PSP activity**.
It is not intended to be used for delivery and revenue reporting. The <a
href="monetize_monetize-standard/prebid-server-premium-seller-analytics.md"
class="xref" target="_blank">Prebid Server Premium Seller Analytics
Report</a> and other <a
href="monetize_monetize-standard/reporting-guide.md"
class="xref" target="_blank">Monetize reports</a> should be used for
those purposes.





>

## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour
- last_24_hours
- last_48_hours
- today
- yesterday
- last_2_days
- last_7_days
- last_14_days
- last_30_days
- month_to_date
- last_month
- month_to_yesterday
- quarter_to_date
- lifetime

The `time_granularity` of the data is hourly. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="prebid-server-premium-health-analytics.md#Prebid-Server-Premium-Health-Analytics__example"
class="xref">Example</a> below.

**Data Retention Period**

Data retention period for this report is 99 days.



>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02-01-09:54"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
hour of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
month of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"2018-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
day of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Cool Seller Inc"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">789 </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the publisher on whose inventory the request originated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Neat Publisher Ltd"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the publisher on whose inventory the request originated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the site on which the the request originated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"My Site"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the site on which the request originated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the placement through which the request originated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"My Placement"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the placement through which the request originated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">ad_size</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">300x250</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
dimensions of the ad slot.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
category of inventory (web, mobile web, or app). App includes CTV and
mobile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
category of device.
<ul>
<li><code class="ph codeph">0</code> = Unknown</li>
<li><code class="ph codeph">1</code> = PC</li>
<li><code class="ph codeph">2</code> = Phone</li>
<li><code class="ph codeph">3</code> = Tablet</li>
<li><code class="ph codeph">4</code> = TV</li>
<li><code class="ph codeph">5</code> = Game Console</li>
<li><code class="ph codeph">6</code> = Media Player</li>
<li><code class="ph codeph">7</code> = Set Top Box</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the category of creative on transacted impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">allowed_media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the category of creative enabled by the publisher on the Monetize
placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
category of creative on transacted impressions. For example: banner,
video, native.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">allowed_media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
category of creative enabled by the publisher on the Monetize placement.
For example: banner, video, native.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_os_family_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the operating system of the device. For example, Microsoft
Windows, Apple iOS, etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_os_family_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Android" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the operating system of the device. For example, Microsoft
Windows, Apple iOS, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_os_family</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Android (2)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">A
string consisting of the device OS family name and ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_os_extended_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">137</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the specific version of the operating system. For example, iOS
16.0.0.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_os_extended_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Windows 10" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the specific version of the operating system. For example, iOS
16.0.0.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_browser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the browser used on the device. For example, Chrome, Safari,
etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">device_browser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"Chrome (all versions)" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the browser used on the device. For example, Chrome, Safari,
etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">browser_code_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">5414</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the specific version of the browser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">browser_code_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"da-chrome-107.0" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the specific version of the browser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">sdk_version</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"pbjs-5.20.3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
version of the software development kit present in the app.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"vizio.pluto"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
specific application used on the device.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">datacenter_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"ams3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the data center used to route the request to demand partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
code of the country in which the impression served. For example,
US.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"United States" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the country in which the impression served. For example, United
States.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">443 </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the bidder (443).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">Prebid Server </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the bidder (Prebid Server).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">demand_partner_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">9645</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the partner to which the request was sent and from which the
response (if any) was received.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">demand_partner_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"PubMatic (PSP)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
name of the partner to which the request was sent and from which the
response (if any) was received.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">demand_partner</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"PubMatic (PSP) (9645)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">A
string consisting of the demand partner name and ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">bid_error_type</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">21</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
ID of the category of error related to the bid response. See the <a
href="prebid-server-premium-health-analytics.md#Prebid-Server-Premium-Health-Analytics__error_types"
class="xref">Error Types</a> table below for more detail.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">bid_error_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"NO_BID_PRICE" </code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
category of error related to the bid response. See the <a
href="prebid-server-premium-health-analytics.md#Prebid-Server-Premium-Health-Analytics__error_types"
class="xref">Error Types</a> table below for more detail.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">external_creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">987654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
external ID associated with the creative served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">inventory_url</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">"myurl.com/(1234)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
mapped URL from the detected domain on the ad call and the ID in
parentheses.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">inventory_url_id</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
mapped URL ID from the detected domain on the ad call.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__1">inventory_url_name</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__dimensions__entry__5">The
mapped URL from the detected domain on the ad call.</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="Prebid-Server-Premium-Health-Analytics__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="Prebid-Server-Premium-Health-Analytics__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="Prebid-Server-Premium-Health-Analytics__metrics__entry__3"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="Prebid-Server-Premium-Health-Analytics__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">3990674680</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of requests sent from Prebid Server Premium to Demand
Partners.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bid_responses_received</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">381809500</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of bid responses received by Prebid Server Premium from Demand
Partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">valid_bids_on_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">378935000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of bids received from PSP Demand Partners that do not trigger
errors, have a creative ID, and have a bid above $0. There may be
multiple bids counted for each auction when multiple PSP Demand Partners
return bids.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">valid_bids_on_imps_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">valid_bids_on_imps
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.09</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of valid bids divided by the number of bid requests sent to
Demand Partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bids_submitted_to_ad_server</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">54021580</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5"><p>The
number of ad requests that had a valid Prebid bid that was not subject
to any additional Xandr rejections returned to
the ad server. This number is counted after the <span
class="ph">Xandr auction process that evaluates bids received
from all sources. The reduced volume between <code
class="ph codeph">valid_bids_on_imps</code> and this metric could be due
to creative requirements not being met, being outbid by other bidders,
or due to the option to <a
href="monetize_monetize-standard/integrate-web-mobile-web-with-psp.md"
class="xref" target="_blank">send only the top bid back to the ad
server</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bid_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">149908040</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of errors in bid responses from Demand Partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bid_errors_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">bid_errors
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.04</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of bid errors divided by the number of bid requests sent to
Demand Partners.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">timeout_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">60673400</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of errors where a Demand Partner did not respond within the
timeout limit. For more information on timeouts see <a
href="monetize_monetize-standard/add-or-edit-psp-global-settings.md"
class="xref" target="_blank">Add or Edit PSP Global Settings</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">timeout_errors_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">timeout_errors
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of timeout errors divided by the number of bid requests sent to
Demand Partners.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">no_bids</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">3461831640</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of times Demand Partners did not bid on a request. This does not
include bid errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">no_bid_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">no_bids
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.87</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of times Demand Partners did not bid divided by the number of bid
requests sent to Demand Partners.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">average_response_time</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">228.02</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
average time Demand Partners took to respond to bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">bidder_user_matched_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">1849169240</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5"><p>The
number of requests where a user identifier was present.</p>

<b>Note:</b> This metric currently only
includes cookies for web and mobile web.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">user_matched_requests_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">bidder_user_matched_requests
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.46</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
number of user matched requests divided by the number of bid requests
sent to Demand Partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">imps_delivered</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">4804540</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5"><p>The
number of impressions successfully delivered and ads rendered.</p>

<b>Note:</b> This report is based on sample
log data multiplied to estimate the full volume of PSP activity and does
not represent final delivery.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">win_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">imps_delivered
/ bid_requests_sent</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">0.01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">This
metric should only be used with the Demand Partner dimension applied. It
is the percentage of how many times a Demand Partner delivered an
impression when considering all opportunities a Demand Partner had to
win the auction. The calculation is the number of impressions delivered
divided by the number of bid requests sent to Demand Partners.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">total_bid_price</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">171869242</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
sum of the bid values received from Demand Partners.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">average_clear_price</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">1.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5">The
sum of bid price for delivered impressions divided by the number of bid
requests sent.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__1">total_buyer_spend</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__3">See
Description.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__4"><code
class="ph codeph">11234.88</code></td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__metrics__entry__5"><p>The
media cost to buyers of impressions delivered.</p>

<b>Note:</b> This report is based on sample
log data multiplied to estimate the full volume of PSP activity and does
not represent final delivery.
</td>
</tr>
</tbody>
</table>



>

## Error Types

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="Prebid-Server-Premium-Health-Analytics__error_types__entry__1"
class="entry colsep-1 rowsep-1">Code</th>
<th id="Prebid-Server-Premium-Health-Analytics__error_types__entry__2"
class="entry colsep-1 rowsep-1">Error</th>
<th id="Prebid-Server-Premium-Health-Analytics__error_types__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="Prebid-Server-Premium-Health-Analytics__error_types__entry__4"
class="entry colsep-1 rowsep-1">Remedy</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">NONE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">No
error.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">None
needed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">INTERNAL</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">There
is a server-side error from the Demand Partner, such as a 400 status
code.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should work with Xandr to collect a specific example code to
share with the Demand Partner for investigation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">TIMEOUT</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Demand Partner did not respond within the timeout limit.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">Either
increase timeout settings to allow for a longer response time or contact
the Demand Partner to inform them of the restriction. For more
information on timeouts, see <a
href="monetize_monetize-standard/add-or-edit-psp-global-settings.md"
class="xref" target="_blank">Add or Edit PSP Global Settings</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">CLIENT</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Demand Partner's Prebid Server adapter generated an error.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">For
significant quantities of this error type, the Seller should contact
Xandr support to diagnose issues by looking at the internal Xandr logs.
An example of this error could be that video supply has been sent to an
adapter that does not support it.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">PARSE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Demand Partner has formatted the bid response incorrectly.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should work with Xandr and the Demand Partner to determine and
resolve the specific formatting issue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">21</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">NO_BID_PRICE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">No
price received from the Demand Partner.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should notify the Demand Partner of the issue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">22</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">NO_CREATIVE_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">No
creative ID received from the Demand Partner.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should notify the Demand Partner of the issue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">23</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">NEC_ERROR</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
bid was rejected during the Xandr auction process.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
bid was successfully received from the Demand Partner, but the bid was
rejected within the Xandr auction. The Seller can use the Seller Bid
Error report to diagnose specific rejections occurring on their
supply.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">24</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">CREATIVE_WRONG_SIZE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Demand Partner is bidding with a creative size that doesn't match the
tag size.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should review the creative size and notify the Demand Partner
regarding the mismatch.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">70</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">MEMBER_NOT_ELIGIBLE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Seller's settings are blocking the Buyer's member from participating in
the auction.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should notify the Buyer that they are currently blocked from
bidding.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">84</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">CATEGORY_REQ_WHITELIST</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
category of the creative is sensitive and requires addition to the
allowlist.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should work with the Buyer to determine if the creative warrants
addition to the allowlist.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">132</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">DYN_CREATIVE_INCOMPATIBLE_TYPE</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">Dynamic
ad-markup bidding is not supported for certain PSP Demand Partners that
require client-side rendering when a Seller doesn't support it.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should correct their setup to align with client-side rendering
requirements, on both supply and PSP sides.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__1">150</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__2">SELLER_MEMBER_NO_CONTRACT</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__3">The
Seller's contract isn't set up properly.</td>
<td class="entry colsep-1 rowsep-1"
headers="Prebid-Server-Premium-Health-Analytics__error_types__entry__4">The
Seller should work with Xandr to remedy the contract issue.</td>
</tr>
</tbody>
</table>



<b>Note:</b> For additional possible error
codes, see <a
href="xandr-bidders/bid-error-codes.md"
class="xref" target="_blank">Bid Error Codes</a>.





>

## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"psp_health_analytics"`, as well as the columns (dimensions and
metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (`year`, `month`,
`day`), and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat psp_health_analytics
   {"report": 
    {
        "format": "csv",
        "report_interval": "yesterday",
        "columns": ["hour", "publisher_id","site_id","header_bidding_demand_partner", "imps", "seller_revenue", "view_rate"],
        "report_type": "psp_health_analytics"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @psp_health_analytics "https://api.appnexus.com/report"
{
   "response":{
      "status":"OK",
      "report_id":"97a181df6d77a8f3cd5a45eff4ea3dab"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=97a181df6d77a8f3cd5a45eff4ea3dab'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 21:57:00",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"publisher_id\"],\"columns\":[\"hour\", \"publisher_id\",\"site_id\",\"header_bidding_demand_partner\",\"imps\",\"seller_revenue\", \"view_rate\"],\"report_type\":\"psp_health_analytics\"
            "url": "report-download?id=97a181df6d77a8f3cd5a45eff4ea3dab"
        },
        "execution_status": "ready"
    }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=97a181df6d77a8f3cd5a45eff4ea3dab' > /tmp/psp_health_analytics.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.







## Related Topics

- <a
  href="monetize_monetize-standard/prebid-server-premium-seller-analytics.md"
  class="xref" target="_blank">Prebid Server Premium Seller Analytics
  Report (UI)</a>
- <a
  href="monetize_monetize-standard/prebid-server-premium-health-analytics-report.md"
  class="xref" target="_blank">Prebid Server Premium Health Analytics
  Report (UI)</a>
- <a
  href="prebid-server-premium-seller-analytics.md"
  class="xref" target="_blank">Prebid Server Premium Seller Analytics
  (API)</a>
- <a
  href="monetize_monetize-standard/reporting-guide.md"
  class="xref" target="_blank">Reporting Guide</a>
- <a
  href="report-service.md"
  class="xref" target="_blank">Report Service API</a>
- <a
  href="xandr-bidders/bid-error-codes.md"
  class="xref" target="_blank">Bid Error Codes</a>






