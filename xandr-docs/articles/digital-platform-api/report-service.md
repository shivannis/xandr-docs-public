---
Title : Report Service
Description : The Report Service is used to provide access to many different types of
ms.date: 10/28/2023
ms.custom: digital-platform-api
reports. It also ensures that each user types can only access the
---


# Report Service



The Report Service is used to provide access to many different types of
reports. It also ensures that each user types can only access the
reports that are appropriate for that type. For example, network users
have access to all report types, while advertiser and publisher users
only have access to a few.

The available metrics vary depending on the report type, but can include
how much money was spent on inventory, the number of impressions seen
and/or sold, revenue earned, and more. This document describes how to
request and download data from the Report Service. It also describes how
to get more information about each of the supported report types, as
well as providing links to further documentation about each report type.



<b>Note:</b> For more information about how to
sync Xandr data to your reporting database, see <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a>.





<b>Note:</b> This is a read-only service; you
will `POST` a JSON-formatted report request, but this will not alter any
of the data stored on our servers.



>

## **Report Types**



<table id="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"
class="entry">Report Type</th>
<th
id="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2"
class="entry">User Type</th>
<th
id="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3"
class="entry">Description</th>
<th
id="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4"
class="entry">Data Retention</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-analytics.md"
class="xref" target="_blank">Network Analytics</a></p>
<p><code class="ph codeph">network_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">General
overview of what is happening. What's serving, what's doing well, on
both buy and sell side.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-billing.md"
class="xref" target="_blank">Network Billing</a></p>
<p><code class="ph codeph">network_billing</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">What
you might need to bill advertisers, what you might be billed by
publishers or Xandr.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="buying-billing-report.md"
class="xref" target="_blank">Buying Billing Report</a></p>
<p><code class="ph codeph">buyer_invoice_report</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
for financial reconciliation with buying related charges.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">1095
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="selling-billing-report.md"
class="xref" target="_blank">Selling Billing Report</a><code
class="ph codeph">seller_invoice_report</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
for financial reconciliation with selling related charges.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">1095
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-advertiser-analytics.md"
class="xref" target="_blank">Network Advertiser Analytics</a></p>
<p><code class="ph codeph">network_advertiser_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on advertisers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-publisher-analytics.md"
class="xref" target="_blank">Network Publisher Analytics</a></p>
<p><code class="ph codeph">network_publisher_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on publishers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="publisher-analytics.md"
class="xref" target="_blank">Publisher Analytics</a></p>
<p><code class="ph codeph">publisher_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network,
Publisher</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
for what a publisher should see.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="advertiser-analytics.md"
class="xref" target="_blank">Advertiser Analytics</a></p>
<p><code class="ph codeph">advertiser_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network,
Advertiser</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
for what an advertiser should see.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime
- some data at reduced granularity after 100 days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="network-video-analytics.md"
class="xref" target="_blank">Network Video Analytics</a><code
class="ph codeph">video_analytics_network</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Video
event reporting across advertisers and publishers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">420
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="network-advertiser-video-analytics.md"
class="xref" target="_blank">Network Advertiser Video Analytics</a><code
class="ph codeph">video_analytics_network_advertiser</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Video
event reporting for a single advertiser.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">420
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="network-publisher-video-analytics.md"
class="xref" target="_blank">Network Publisher Video Analytics</a><code
class="ph codeph">video_analytics_network_publisher</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Video
event reporting for a single publisher.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">420
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="buyer-segment-performance-report.md"
class="xref" target="_blank">Buyer Segment Performance Report</a><code
class="ph codeph">buyer_segment_performance</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
on segment performance across campaigns and multiple advertisers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">45
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="seller-brand-review-report.md"
class="xref" target="_blank">Seller Brand Review Report</a><code
class="ph codeph">seller_brand_review</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
on brand performance across all of network's inventory.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">428
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="publisher-brand-review-report.md"
class="xref" target="_blank">Publisher Brand Review Report</a><code
class="ph codeph">publisher_brand_review</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Publisher</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
on brand performance across all of publisher's inventory.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">428
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-creative-frequency-and-recency.md"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a></p>
<p><code
class="ph codeph">network_advertiser_frequency_recency</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on creative frequency and recency for a single
advertiser.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">120
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a></p>
<p><code class="ph codeph">advertiser_frequency_recency</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network,
Advertiser</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
for what an advertiser should see about its creative frequency and
recency.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">120
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-site-domain-performance.md"
class="xref" target="_blank">Network Site Domain Performance</a></p>
<p><code
class="ph codeph">network_site_domain_performance</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on domain performance across advertisers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">45
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="site-domain-performance-report.md"
class="xref" target="_blank">Site Domain Performance Report</a></p>
<p><code class="ph codeph">site_domain_performance</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network,
Advertiser</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
on domain performance for a single advertiser.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">45
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="seller-site-domain-report.md"
class="xref" target="_blank">Seller Site Domain</a></p>
<p><code class="ph codeph">seller_site_domain</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Reporting
on what inventory is coming through a publisher.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">60
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="segment-loads-report.md"
class="xref" target="_blank">Segment Loads Report</a></p>
<p><code class="ph codeph">segment_load</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on segments.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="advertiser-attributed-conversions.md"
class="xref" target="_blank">Advertiser Attributed Conversions</a></p>
<p><code class="ph codeph">attributed_conversions</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on advertisers' attributed conversions.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">90
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="geo-analytics-report.md"
class="xref" target="_blank">Geo Analytics Report</a></p>
<p><code class="ph codeph">geo_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Break
down campaign delivery and performance by geographic area.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">45
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-carrier-analytics.md"
class="xref" target="_blank">Network Carrier Analytics</a></p>
<p><code class="ph codeph">network_carrier_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Report
on buy-side and sell-side performance data based on mobile device
carriers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">46
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="network-device-analytics.md"
class="xref" target="_blank">Network Device Analytics</a></p>
<p><code class="ph codeph">network_device_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Report
on buy-side and sell-side performance data based on devices where
impressions were served.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">428
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="conversion-pixel-last-fire.md"
class="xref" target="_blank">Conversion Pixel Last Fire</a></p>
<p><code class="ph codeph">pixel_fired</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on the last fire date and time of advertisers' conversion
pixels.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Lifetime</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="completed-creative-audits-report.md"
class="xref" target="_blank">Completed Creative Audits Report</a><code
class="ph codeph">completed_creative_audits</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
report designed to give you insight into how your creatives are moving
through the audit process</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">365
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a></p>
<p><code class="ph codeph">network_analytics_feed</code></p>
<p><code class="ph codeph">clicktrackers</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">The
ability to sync our aggregated reports to your reporting database.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="data-usage-report.md"
class="xref" target="_blank">Data Usage Report</a><code
class="ph codeph">buyer_data_usage_analytics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
report that gives details on your usage of data provided by third
parties (e.g., user segment providers), the costs of that data usage and
line items/campaigns in which that data was used to target users.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">60
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="vendor-usage-report.md"
class="xref" target="_blank">Vendor Usage Report</a><code
class="ph codeph">buyer_vendor_usage_analytics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
report that provides the details on your usage of data or platform
powered by third party vendors (e.g., user segment providers), the costs
of that data or feature usage , and the line items/campaigns where
vendor costs were applicable.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">60
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="buyer-engagement-report.md"
class="xref" target="_blank">Buyer Engagement Report</a> <code
class="ph codeph">buyer_engagement_report</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Advertiser</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
insight into the viewable duration of your display and video
creatives.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">Last
five weeks</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="buyer-deal-metrics.md"
class="xref" target="_blank">Buyer Deal Metrics</a><code
class="ph codeph">buyer_deal_metrics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Advertiser,
Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Key
information about deal metrics, performance, and rejection reasons that
is relevant to buyers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><a
href="seller-deal-metrics-report.md"
class="xref" target="_blank">Seller Deal Metrics</a><code
class="ph codeph">seller_deal_metrics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Publisher,
Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Key
information about deal metrics, performance, and rejection reasons that
is relevant to sellers.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="multi-buyer-seller-deal-metrics.md"
class="xref" target="_blank">Multi-Buyer Seller Deal Metrics</a></p>
<p><code
id="report-service__codeblock-49e26149-4b7a-4bd6-8455-fb4290c5c355"
class="ph codeph"> multi_buyer_seller_deal_metrics </code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Publisher,
Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Key
information about deal metrics, performance, and rejection reasons that
is relevant to seller.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="key-value-analytics-report.md"
class="xref" target="_blank">Key Value Analytics</a></p>
<code class="ph codeph">key_value_analytics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Network
reporting on information associated with your network's defined
targeting keys and values. Impressions with key/value targeting will
serve and be reported only for those impressions that were logged by a
placement tag containing the kw_ prefix on the key name.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">428
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="curator-analytics-report.md"
class="xref" target="_blank">Curator Analytics Report</a></p>
<p><code class="ph codeph">curator_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Curator</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
curators insight into how money is flowing from demand to supply within
their curated marketplace.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">14
months</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="curator-segment-performance-report.md"
class="xref" target="_blank">Curator Segment Performance Report</a></p>
<p><code class="ph codeph">curator_segment_performance</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Curator</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
curators insights into how their targeted segments are contributing to
the overall performance of their curated deals.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">14
months</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="buyer-reach-and-frequency-report.md"
class="xref" target="_blank">Buyer Reach And Frequency Report</a></p>
<code
class="ph codeph">buyer_approximate_unique_users_hourly</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
the information associated with "reach" which is the number of unique
devices or persons exposed to ads and "frequency" which is the average
number of times each unique device or person was exposed to
advertisements.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">90
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="offline-attribution-report.md"
class="xref" target="_blank">Offline Attribution Report</a></p>
<code class="ph codeph">offline_attribution</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Advertiser</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
insight into your line item's performance in influencing in-store
purchases among your target audiences. The Offline Attribution report is
only accessible to clients who have Offline Sales Attribution enabled
for their line items.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">120
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="seller-cmp-analytics-report.md"
class="xref" target="_blank">Seller CMP Analytics Report</a></p>
<p><code class="ph codeph">cmp_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Provides
insight into the number, validity, and content of the IAB Transparency
&amp; Consent Framework (IAB TCF) strings on seller ad requests to our
endpoints.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><u><a
href="prebid-server-premium-seller-analytics.md"
class="xref" target="_blank">Prebid Server Premium Seller Analytics
Report</a></u><code
class="ph codeph">prebid_server_analytics</code></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">The
Prebid Server Premium Seller Analytics Report contains performance
information on configured Prebid Server Premium (PSP) demand partners.
Use for final delivery and performance.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="prebid-server-premium-health-analytics.md"
class="xref" target="_blank">Prebid Server Premium Health Analytics
Report</a></p>
<p><code class="ph codeph">psp_health_analytics</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Network</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Data
related to <a
href="monetize_monetize-standard/prebid-server-premium.md"
class="xref" target="_blank">Prebid Server Premium</a> bid requests and
transactions. Useful for troubleshooting and optimization. Report is
based on <strong>sample data multiplied to estimate the full volume of
PSP activity</strong>. Use <a
href="prebid-server-premium-seller-analytics.md"
class="xref" target="_blank">Prebid Server Premium Analytics Report</a>
and other Monetize reports for those purposes.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">99
days</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__1"><p><a
href="inventory-availability-report.md" class="xref">Inventory
Availability Report</a></p>
<p><code
class="ph codeph">platform_inventory_availability</code></p></td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__2">Advertiser,
Publisher</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__3">Inventory
availability reports offer insight into the types of inventory available
on the platform.</td>
<td class="entry"
headers="report-service__table-b1329df4-d064-4d3f-bb70-1ee1f195745e__entry__4">30
days</td>
</tr>
</tbody>
</table>

>

## REST API for Viewing Metadata





<table id="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__1"
class="entry">HTTP Method</th>
<th
id="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__2"
class="entry">Endpoint</th>
<th
id="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__1">GET</td>
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__2"><a
href="https://api.appnexus.com/report?meta" class="xref"
target="_blank">https://api.appnexus.com/report?meta</a></td>
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__3">Return
meta data for all reports.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__1">GET</td>
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__2"><a
href="https://api.appnexus.com/report?meta=REPORT_TYPE" class="xref"
target="_blank">https://api.appnexus.com/report?meta=REPORT_TYPE</a></td>
<td class="entry"
headers="report-service__table-592af1c9-0c7e-4485-a58b-45ec08300260__entry__3">Return
meta data for a particular report type.</td>
</tr>
</tbody>
</table>



>

## JSON Fields

The meta array includes the following fields:

<table id="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__1"
class="entry">Field</th>
<th
id="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__1"><code
class="ph codeph">time_granularity</code></td>
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__2">The
granularity of time for which the report can provide data. Possible
values: <code class="ph codeph">"hourly"</code>, <code
class="ph codeph">"daily"</code>, <code
class="ph codeph">"monthly"</code>, <code
class="ph codeph">"yearly"</code>, or <code
class="ph codeph">"lifetime"</code>. If <code
class="ph codeph">"hourly"</code> or <code
class="ph codeph">"lifetime"</code>, data is available for year, month,
day, and hour. If <code class="ph codeph">"daily"</code>, <code
class="ph codeph">"monthly"</code>, or <code
class="ph codeph">"yearly"</code>, data is available for only year,
month, and day.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__1"><code
class="ph codeph">columns</code></td>
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__2">The
columns that can be requested. For each column, the name and type are
listed in the JSON response.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__1"><code
class="ph codeph">filters</code></td>
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__2">The
columns that can be used as filters. For each column, the name and type
are listed in the JSON response.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__1"><code
class="ph codeph">time_intervals</code></td>
<td class="entry"
headers="report-service__table-428ae339-bf2a-439e-a37b-15c4e95ef648__entry__2">The
time ranges for which the report can be run.</td>
</tr>
</tbody>
</table>





<b>Note:</b> Some report types will allow you
to run a report for a custom time frame. This can be done by setting the
`start_date` and `end_date` fields in your report request.



>

**Click here to view an example meta data response (using the
network_analytics report)**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?meta=network_analytics'

{
    "response": {
        "status": "OK",
        "meta": {
            "time_granularity": "hourly",
            "columns": [
                {
                    "column": "month",
                    "type": "date"
                },
                {
                    "column": "day",
                    "type": "date"
                },
                {
                    "column": "hour",
                    "type": "date"
                },
                {
                    "column": "buyer_member_id",
                    "type": "int"
                },
                {
                    "column": "seller_member_id",
                    "type": "int"
                },
                {
                    "column": "seller_member_name",
                    "type": "string"
                },
                {
                    "column": "seller_member",
                    "type": "string"
                },
                {
                    "column": "advertiser_id",
                    "type": "int"
                },
                ...
            ],
            "filters": [
                {
                    "column": "hour",
                    "type": "date"
                },
                {
                    "column": "day",
                    "type": "date"
                },
                {
                    "column": "month",
                    "type": "date"
                },
                {
                    "column": "buyer_member_id",
                    "type": "int"
                },
                {
                    "column": "seller_member_id",
                    "type": "int"
                },
                ...
            ],
            "havings": [
                {
                    "column": "imps"
                },
                {
                    "column": "clicks"
                },
                {
                    "column": "cost"
                },
                {
                    "column": "revenue"
                },
                {
                    "column": "booked_revenue"
                },
                {
                    "column": "reseller_revenue"
                },
                {
                    "column": "profit"
                },
                ...
            ],
            "time_intervals": [
                "current_hour",
                "last_hour",
                "last_48_hours",
                "today",
                "yesterday",
                "last_7_days",
                "month_to_date",
                "quarter_to_date",
                "last_month",
                "lifetime",
                "mtd"
            ]
        }
    }
}
```



>

## REST API for Data Retrieval



>

<table id="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__1"
class="entry">HTTP Method</th>
<th
id="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__2"
class="entry">Endpoint</th>
<th
id="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__1">POST</td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__2"><p><a
href="https://api.appnexus.com/report" class="xref"
target="_blank">https://api.appnexus.com/report</a></p>
<p>(report JSON)</p></td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__3">Request
a report.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__1">GET</td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__2"><a
href="https://api.appnexus.com/report?id=REPORT_ID" class="xref"
target="_blank">https://api.appnexus.com/report?id=REPORT_ID</a></td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__3">Request
the status of a report.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__1">GET</td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__2"><a
href="https://api.appnexus.com/report-download?id=REPORT_ID"
class="xref"
target="_blank">https://api.appnexus.com/report-download?id=REPORT_ID</a></td>
<td class="entry"
headers="report-service__table-1538bd79-e9c1-4397-bcbe-496711da3624__entry__3">Retrieve
report data.</td>
</tr>
</tbody>
</table>





<b>Note:</b> Network users can run advertiser
and publisher-level reports by appending `advertiser_id=ADVERTISER_ID`
or `publisher_id=PUBLISHER_ID` to the query string.



>

## **JSON Fields**

<table id="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"
class="entry">Field</th>
<th
id="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2"
class="entry">Required on <code class="ph codeph">POST</code></th>
<th
id="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3"
class="entry">Type</th>
<th
id="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">report_type</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">yes</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">enum</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>This
determines which information will be returned. Possible values:</p>
<ul>
<li><code class="ph codeph">"network_analytics"</code></li>
<li><code class="ph codeph">"network_billing"</code></li>
<li><code class="ph codeph">"buyer_invoice_report"</code></li>
<li><code class="ph codeph">"seller_invoice_report"</code></li>
<li><code class="ph codeph">"network_advertiser_analytics"</code></li>
<li><code class="ph codeph">"network_publisher_analytics"</code></li>
<li><code
class="ph codeph">"network_site_domain_performance"</code></li>
<li><code class="ph codeph">"advertiser_analytics"</code></li>
<li><code class="ph codeph">"video_analytics_network"</code></li>
<li><code
class="ph codeph">"video_analytics_network_advertiser"</code></li>
<li><code
class="ph codeph">"video_analytics_network_publisher"</code></li>
<li><code class="ph codeph">"buyer_segment_performance"</code></li>
<li><code class="ph codeph">"seller_brand_review"</code></li>
<li><code class="ph codeph">"publisher_brand_review"</code></li>
<li><code class="ph codeph">"publisher_analytics"</code></li>
<li><code class="ph codeph">"network_creative_search"</code></li>
<li><code class="ph codeph">"publisher_creative_search"</code></li>
<li><code
class="ph codeph">"network_advertiser_frequency_recency"</code></li>
<li><code class="ph codeph">"advertiser_frequency_recency"</code></li>
<li><code class="ph codeph">"site_domain_performance"</code></li>
<li><code class="ph codeph">"seller_site_domain"</code></li>
<li><code class="ph codeph">"inventory_domain_analytics"</code></li>
<li><code class="ph codeph">"inventory_source_analytics"</code></li>
<li><code class="ph codeph">"inventory_daily_uniques"</code></li>
<li><code class="ph codeph">"segment_load"</code></li>
<li><code class="ph codeph">"attributed_conversions"</code></li>
<li><code class="ph codeph">"pixel_fired"</code></li>
<li><code class="ph codeph">"network_analytics_feed"</code></li>
<li><code class="ph codeph">"clicktrackers"</code></li>
<li><code class="ph codeph">"key_value_analytics"</code></li>
<li><code class="ph codeph">"prebid_server_analytics"</code></li>
<li><code class="ph codeph">"psp_health_analytics"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">string
(50)</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><div
id="report-service__p-b9427eb5-be75-4db3-84c4-3887088ec340" >
This determines which timezone the data will be reported in. For a list
of possible timezone values, see <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a>.
class="note note_note">
<b>Note:</b> For the <code
class="ph codeph">network_billing</code>, <code
class="ph codeph">network_analytics</code>, <code
class="ph codeph">network_advertiser_analytics</code>, <code
class="ph codeph">network_publisher_analytics</code>, <code
class="ph codeph">advertiser_analytics</code>, and <code
class="ph codeph">publisher_analytics</code> report types, data older
than 100 days will be reported in UTC. Also, report types that do not
offer hourly data, such as <code
class="ph codeph">network_site_domain_performance</code>, <code
class="ph codeph">site_domain_performance</code>, and <code
class="ph codeph">seller_site_domain</code> will be reported in UTC.

</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">filters</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4">The
list of filter objects to apply to the report. See <a
href="report-service.md#ReportService-Step1-CreateaJSON-formattedreportrequest"
class="xref" target="_blank">step 1</a> of <a
href="report-service.md#ReportService-Howtorunareport"
class="xref" target="_blank">How to run a report</a> below.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">group_filters</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array
of objects</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><div
id="report-service__p-dd482c8b-5d2e-48f7-9f59-d45dcc427b6c" >
Allows you to specify an operation to perform on one or more filters.
For example, if you're selecting total impressions grouped by campaign,
you can use this field to filter out campaigns that don't have at least
10,000 impressions:
<pre id="report-service__codeblock-45621460-4061-41ad-83f2-91755f97d2c4"
class="pre codeblock"><code>{
    &quot;group_filters&quot;: [
        {
            &quot;imps&quot;: {
                &quot;value&quot;: 10000,
                &quot;operator&quot;: &quot;&gt;=&quot;
            }
        }
    ]
}</code></pre>
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">columns</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">yes</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array
of strings</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4">The
list of columns to include in the report. See <a
href="report-service.md#ReportService-Step1-CreateaJSON-formattedreportrequest"
class="xref" target="_blank">Create a JSON-formatted report request</a>
below. At least one column must be specified.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">row_per OR groups</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><div
id="report-service__p-84070677-f3d3-47fc-a4ca-cba818d40015" >
class="note note_note">
<b>Note:</b> <strong>Deprecated</strong>. By
default, reporting results are automatically grouped by the dimensions
in <code class="ph codeph">columns</code>. Passing these fields has no
effect.


<p>For most reports, selected dimensions are grouped automatically. For
example, if you include the columns <code
class="ph codeph">"advertiser_id"</code>, <code
class="ph codeph">"campaign_id"</code>, <code
class="ph codeph">"creative_id"</code>, and <code
class="ph codeph">"imps"</code>, each row of report data would show the
impressions per advertiser, campaign, and creative combination.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">string</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>The
start date for the report.</p>
<ul>
>
For report types that offer hourly data, this must be formatted as <code
class="ph codeph">"YYYY-MM-DD HH:MM:SS"</code>.
class="note note_note">
<b>Note:</b> <code
class="ph codeph">MM:SS</code> must be <code
class="ph codeph">00:00</code>, as data is not available for minutes and
seconds.

</li>
<li>For report types that do not offer hourly data, this must be
formatted as <code class="ph codeph">"YYYY-MM-DD"</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">string</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><div
id="report-service__p-74a435fd-064e-4d45-99d1-9a10c946f302" >
The end date for the report.
class="note note_note">
<b>Note:</b> The <code
class="ph codeph">end_date</code> is non-inclusive. For example, if you
start a report at <code class="ph codeph">"2017-07-01 00:00:00"</code>
and end the report at <code
class="ph codeph">"2017-07-01 23:00:00"</code>, your report will not
include data from the last hour of the day. The correct way to retrieve
this data would be to end the report at <code
class="ph codeph">"2017-07-02 00:00:00"</code>.


<ul>
<li>For report types that offer hourly data, this must be formatted as
<code class="ph codeph">"YYYY-MM-DD HH:MM:SS"</code>. However, <code
class="ph codeph">MM:SS</code> must be <code
class="ph codeph">00:00</code>, as data is not available for minutes and
seconds. For example, <code
class="ph codeph">"2017-07-01 00:00:00"</code> to <code
class="ph codeph">"2017-07-02 00:00:00"</code> would retrieve an entire
day's data.</li>
<li>For reports aggregated across intervals longer than hourly (e.g.,
daily, weekly, etc.), the format must be <code
class="ph codeph">"YYYY-MM-DD"</code>. For example, <code
class="ph codeph">"2017-07-01"</code> to <code
class="ph codeph">"2017-07-02"</code> would retrieve an entire day's
data.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">report_interval</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">enum</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>The
time range for the report. Not all reports accept all intervals. See
each report's documentation and metadata for details. Possible
values:</p>
<ul>
<li><code class="ph codeph">current_hour</code></li>
<li><code class="ph codeph">last_hour</code></li>
<li><code class="ph codeph">today</code></li>
<li><code class="ph codeph">yesterday</code></li>
<li><code class="ph codeph">last_48_hours</code></li>
<li><code class="ph codeph">last_2_days</code></li>
<li><code class="ph codeph">last_7_days</code></li>
<li><code class="ph codeph">last_14_days</code></li>
<li><code class="ph codeph">month_to_yesterday</code></li>
<li><code class="ph codeph">month_to_date</code></li>
<li><code class="ph codeph">quarter_to_date</code></li>
<li><code class="ph codeph">last_month</code></li>
<li><code class="ph codeph">lifetime</code></li>
<li><code class="ph codeph">30_days</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">orders</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array
of objects</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4">The
list of columns to sort by. See <a
href="report-service.md#ReportService-Howtorunareport"
class="xref" target="_blank">How to run a report</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">enum</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>The
format in which the report data will be returned. If this field is not
specified, it will default to <code class="ph codeph">"csv"</code>.
Possible values:</p>
<ul>
<li><code class="ph codeph">"csv"</code>: Comma-separated values</li>
<li><code class="ph codeph">"excel"</code>: Tab-separated values</li>
<li><code class="ph codeph">"html"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">reporting_decimal_type</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">enum</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>The
decimal mark used in the report. Possible values:</p>
<ul>
<li><code class="ph codeph">"comma"</code></li>
<li><code class="ph codeph">"decimal"</code> (period)</li>
</ul>
<p>If this field is passed, it overrides any reporting decimal
preferences set at the user and member levels.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">emails</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">No</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">array</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4"><p>The
list of email addresses to which the reporting data will be sent. The
reporting data is sent as an attachment, and the body of the email
contains the information below.</p>
<ul>
<li>Report type</li>
<li>Member, Advertiser, or Publisher name and ID</li>
<li>Run date</li>
<li>Start date</li>
<li>End date</li>
<li>Timezone</li>
>
User who generated the report.
class="note note_note">
<b>Note:</b> Report results larger than 15 MB
will not be emailed. See <a
href="report-service.md#ReportService-ReportingBestPractices"
class="xref" target="_blank">Reporting Best Practices</a> for ways to
prevent results from being too large.

</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__1"><code
class="ph codeph">escape_fields</code></td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__2">no</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__3">boolean</td>
<td class="entry"
headers="report-service__table-003dd29f-9a8a-48ab-8de0-e6576654ecc5__entry__4">When
<code class="ph codeph">true</code>, it adds quotes around each field in
the report output to allow for safer import into Excel. This only
applies to CSV and tab-delimited reports.</td>
</tr>
</tbody>
</table>



>

## **How to run a report**

>

- <a
  href="report-service.md#ReportService-Step1-CreateaJSON-formattedreportrequest"
  class="xref" target="_blank">Step 1. Create a JSON-formatted report
  request</a>
- <a
  href="report-service.md#ReportService-Step2-POSTtherequesttotheReportService"
  class="xref" target="_blank">Step 2. POST the request to the Report
  Service</a>
- <a
  href="report-service.md#ReportService-Step3-GETthereportstatusfromtheReportService"
  class="xref" target="_blank">Step 3. GET the report status from the
  Report Service</a>
- <a
  href="report-service.md#ReportService-Step4-GETthereportdatafromtheReportDownloadService"
  class="xref" target="_blank">Step 4. GET the report data from the Report
  Download Service</a>





>

## Step 1. Create a JSON-formatted report request

The JSON file should include the specific `report_type` that you want to
run, as well as the `columns` (dimensions and metrics) and
`report_interval` (`"today"`, `"yesterday"`, `"month_to_date"`, etc.)
that you want to retrieve. You can also include `filters` for
dimensions, define granularity (year, month, day), and specify the
`format` in which the data should be returned. The `format` options are:

- `"csv"` - Comma-separated file
- `"excel"` - tab-separated file
- `"xlsx"` - modern XML-compatible Excel format (zipped)



<b>Note:</b> To filter a dimension by more
than one value, use an array. For example:

**Correct:**

` "filters": [{"bid_type": ["learn","optimized"]},`
` {"geo_country":"US"}]`

**Incorrect:**

` "filters": [{"bid_type":"learn"},`
` {"bid_type":"optimized"},`` {"geo_country":"US"}]`





See <a
href="report-service.md#ReportService-JSONFields"
class="xref" target="_blank">JSON Fields</a> above for more details
about the fields that can be included in the request. For a full list of
available dimensions and metrics, see the documentation for the specific
report type that you want to run, or pull that report's metadata as
described in <a
href="report-service.md#ReportService-RESTAPIforViewingMetadata"
class="xref" target="_blank">REST API for Viewing Metadata</a>.

``` pre
$ cat report_request

{
    "report": {
        "report_type": "network_analytics",
        "report_interval": "last_48_hours",
        "columns": ["day","imps","clicks"],
        "filters": [{"geo_country":"US"}],
        "orders": [{"order_by":"day", "direction":"ASC"},{"order_by":"imps", "direction":"DESC"}],
        "format": "csv"
    }
}
```

>

## Step 2. POST the request to the Report Service

>

You `POST` the JSON request and get back a report ID.

``` pre
$ curl -b cookies -c cookies -X POST -d @report_request 'https://api.appnexus.com/report'

{
    "response": {
        "status": "OK",
        "report_id": "ca9955709eade9a0e89f5cda5345c12r"
    }
}
```



>

Alternatively, you can get a Report ID via a `POST` request using a
saved report ID. For more information, see the <a
href="saved-report-service.md"
class="xref" target="_blank">Saved Report Service</a>:

``` pre
$ curl -c cookies -b cookies -X POST 'https://api.appnexus.com/report?saved_report_id=30'
```





>

## Step 3. GET the report status from the Report Service

>

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this call until the `execution_status` is
`"ready"`. Then use the `report-download` service to save the reporting
data to a file. (This is described in the next step.)

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=ca9955709eade9a0e89f5cda5345c12r'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2017-03-13 18:15:48",
            "cache_hit": false,
            "fact_cache_hit": false,
            "json_request": "{\"report\":{\"report_type\":\"network_analytics\",\"report_interval\":
                \"last_48_hours\",\"columns\":[\"day\",\"imps\",\"clicks\"],\"filters\":[{\"geo_country\":
                \"US\"},{\"entity_member_id\":\"514\"},{\"entity_member_id\":null}],\"orders\":
                [{\"order_by\":\"day\",\"direction\":\"ASC\"},{\"order_by\":\"imps\",\"direction\":
                \"DESC\"}]}}",
            "header_info": "Report type:,network_analytics\r\n,\r\nRun at:,2017-03-13 18:15:48\r\nStart date:,
                \r\nEnd date:,\r\nTimezone:,\r\nUser:,John Smith (9385)\r\n",
            "report_size": "10",
            "row_count": "35",
            "url": "report-download?id=ca9955709eade9a0e89f5cda5345c12r"
        },
        "execution_status": "ready"
    }
}
```





>

## Step 4. GET the report data from the Report Download Service

To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the url field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.





<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your request to expose the response header.

``` pre
$ curl -i -b cookies -c cookies 'https://api.appnexus.com/report-download?id=ca9955709eade9a0e89f5cda5345c12r' > /tmp/network_analytics.csv
```



You can then open the csv file using Microsoft Excel or similar
software.

>

## Report Data Size Limitations

Report results larger than 15 MB will not be emailed to recipients
specified in the JSON request.

Reports that take longer than 15 minutes to process will timeout and
return with an error status. This amount of processing time roughly
corresponds to 1MM rows of data. If your reports routinely timeout,
please consider one of the following options:

- Verify that you really need all that data. If you don't, update your
  report requests with a shorter time interval or fewer dimensions. For
  tips on preventing reports from being unnecessarily large or taking
  too long to process, see <a
  href="report-service.md#ReportService-ReportingBestPractices"
  class="xref" target="_blank">Reporting Best Practices</a> below.
- If you really do need all of that data, follow the instructions in <a
  href="report-pagination.md"
  class="xref" target="_blank">Report Pagination</a>.



>

## Report Throttling

In order to ensure that our systems operate as smoothly as possible for
all users, the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> throttles report
requests at both the member level and the user level. This page
describes how the limits are determined, and how we handle requests that
exceed the limits defined for each member and each user.



>

## User Limits

When a report is submitted by User A, a check is performed to see if
User A has submitted 5 report requests in the past 15 minutes that are
in pending status or currently being processed. If so, an error is
signaled.



>

## Member Limits

A given member is limited to *n* report requests being processed at the
same time, where *n* is determined by the member's contract (This is
specified internally by the `max_concurrent_reports_processing` field on
the api.member table.) Any report requests submitted after the limit has
been reached are placed in a queue. No warnings or alerts are given.




## Example

User- and member-level throttling interact with each other as shown in
the following example. Assume that User A and User B are associated with
the same member; this member has a limit of 5 concurrent report
requests. We assume for this example that the following report requests
are all submitted within a 15 minute time span:



<table id="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1"
class="entry">Report Request</th>
<th
id="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2"
class="entry">User</th>
<th
id="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3"
class="entry">Outcome</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">1</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">2</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Processing</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">3</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
B</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">4</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
B</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Processing</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">5</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
B</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">6</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Enqueued</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">7</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Enqueued</td>
</tr>
<tr class="even row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">8</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Enqueued</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__1">9</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__2">User
A</td>
<td class="entry"
headers="report-service__table-3e2f040b-cdd6-4551-bcd2-64154c96b7b8__entry__3">Error</td>
</tr>
</tbody>
</table>

Report request \# 6 is placed in the queue, since there are already 5
report requests being processed for this member. For the same reason,
requests \# 6-8 are also placed in the queue. Finally, we can see that
request \# 9 causes an error to be signaled, since User A has submitted
their 6th report request within a 15 minute time span.

>

## Conversion Data

Conversions (and related data) in reports are processed asynchronously.
As a result, reports are available more quickly, while some
conversion-related data is still being processed in the background. For
more information, see "Asynchronous Conversion Attribution" in the UI
documentation.



>

## Reporting Best Practices

Here are some tips for preventing your reports from being unnecessarily
large or taking a long time to process:

- Shorten the `report_interval` (e.g., from `"lifetime"` to
  `"last_48_hours"`)
- Add more higher-level filters (e.g., for a specific publisher,
  advertiser, campaign, etc.)
- Avoid combining granular buy-side and sell-side dimensions (e.g.,
  creative and placement), as this increases the number of rows
  exponentially. If you need to report on such combinations, consider
  using <a
  href="bulk-reporting-feeds.md"
  class="xref" target="_blank">Bulk Reporting Feeds</a> or the
  <a href="https://docs.xandr.com/csh?context" class="xref"
  target="_blank">Log-Level Data (LLD) Feeds</a>.

If you must pull large reports that take a long time to process, follow
the instructions in <a
href="report-pagination.md"
class="xref" target="_blank">Report Pagination</a>.

To determine when a report was last updated, use the <a
href="report-status-service.md"
class="xref" target="_blank">Report Status Service</a>.






