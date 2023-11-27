---
Title : Log Level Data Feeds
Description : <b>Note:</b> LLD feeds are not available via
ms.custom : log-level-data
ms.date : 10/28/2023
the API.
---


# Log Level Data Feeds





<b>Note:</b> LLD feeds are not available via
the API.



Log Level Data (LLD) feeds contain event-level data that enables you to
build custom reporting and conduct in-depth analysis. Typically,
log-level data is used for reporting on dimensions not available in the
Xandr UI/API reports. It can also be used for
any analysis which requires event-level granularity, such as custom
conversion attribution or identifying pools of high-value users.

**To subscribe to Log-Level Data and learn about changes**

If you are interested in receiving log-level data feeds, talk to your
Xandr representative about the data your use
case will need, technical setup and pricing. 



## Overview

Log-level data feeds include information about the following:

- Your managed publishers' transacted impressions. This includes: 
  - Information about the impression sold (e.g., publisher ID, tag ID,
    and domain)
  - Information about the user to whom the ad was served (e.g., user ID,
    geographic region, and user timezone)
  - ID of the creative that served
- Your managed advertisers' transacted impressions, and any resulting
  clicks and conversions. This includes:
  - Information about the impression purchased such as advertiser ID,
    campaign ID, and creative ID
  - Information about the user to whom the ad was served (e.g., user ID,
    geographic region, user timezone, and number of times the user has
    seen creatives from your advertiser)
  - Information about the inventory where the impression served (e.g.,
    Publisher ID or domain (if exposed by the seller))
- Segment pixel fires for all of your network's owned segments
  (including network- and advertiser-level segments)

For a complete list of fields available to buyers and sellers, see the
<a href="log-level-data-feeds.md#ID-00000062__log_level_feeds_list"
class="xref">List of log-level Feeds</a> section below.



<b>Note:</b> **Timestamps**: If your log-level
data is provided in the avro format or one of the protobuf formats, the
timestamp field values will be supplied in UNIX Epoch time.







## Use Cases

Typical uses for log-level data include:

- **Enhanced reporting** - report on additional dimensions such as
  geographic region.s
- **Segment management** -  build segments based on user actions and
  report on first- party data if your user IDs can be mapped to
  Xandr user IDs.
- **Conversion attribution** - see all actions leading to a conversion,
  experiment with custom conversion attribution.





## Data Retrieval

Log-level data may be obtained via batch files. 

Use this method if data accuracy is paramount. Since batch files are
relatively large, they cannot be consumed in the same way ordinary
reports are. Clients who receive log-level data will typically have
their own engineering resources or a third-party vendor build an ETL
process to load the data into their own database. Once in the database,
the log-level data can be used by their own reporting systems or data
analysts. 

See <a
href="batch-log-level-data.md"
class="xref" target="_blank">Batch Log-Level Data</a> for more
information on how to intake your data.

**Batch **

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000062__entry__1"
class="entry align-left colsep-1 rowsep-1">Features</th>
<th id="ID-00000062__entry__2"
class="entry align-left colsep-1 rowsep-1">Batch</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Latency</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000062__entry__2">over
1 hour</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Viewability Information</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">✓</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Failure recovery</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">✓</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Export to Amazon S3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">✓</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00000062__entry__1">Data
quality guaranteed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">✓</td>
</tr>
<tr class="even row">
<td colspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1 ID-00000062__entry__2"><strong>Recommended
use cases</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Financial calculations</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">✓</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Real-time dashboards</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Custom bidders</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__1">Campaign performance metrics</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__entry__2">Final, long-term analytics</td>
</tr>
</tbody>
</table>

LLD data is final and accurate. As a result, Batch LLD can be used to
make financial calculations. If Xandr discovers
an inconsistency, Batch LLD data will be reprocessed. 

The table below lists which feeds are available via LLD, the feed handle
for each and a link to view the feed columns.




##  List of Log Level Feeds

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000062__log_level_feeds_list__entry__1"
class="entry align-left colsep-1 rowsep-1">Feed</th>
<th id="ID-00000062__log_level_feeds_list__entry__2"
class="entry align-left colsep-1 rowsep-1">Feed Handle</th>
<th id="ID-00000062__log_level_feeds_list__entry__3"
class="entry align-left colsep-1 rowsep-1">Columns</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Standard Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">standard_feed</code> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="standard-feed.md" class="xref">View</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Segment Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">segment_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="segment-feed.md" class="xref">View</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Bid Landscape
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">bid_landscape_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="bid-landscape-feed.md" class="xref">View</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Conversion Pixel
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">pixel_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="conversion-pixel-feed.md" class="xref">View</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Video Event
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">video_events_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="video-events-feed.md" class="xref">View</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Auction Categories
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">auction_category_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="auction-categories-feed.md" class="xref">View</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Auction Segment
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">auction_segment_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="auction-segment-feed.md" class="xref">View</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Key Value Auction
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">auction_kv_labels_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="key-value-auction-feed.md" class="xref">View</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Universal Pixel
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">universal_pixel_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="universal-pixel-feed.md" class="xref">View</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Curator Feed
*</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">curator_feed </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="curator-feed.md"
class="xref" target="_blank">View</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Buyer Transparency
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">brand_transparency_feed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="buyer-transparency-feed.md" class="xref">View</a> </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__1">Incrementality
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__2"><code
class="ph codeph">incrementality_feed</code> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000062__log_level_feeds_list__entry__3"><a
href="log-level-data-feeds.md"
class="xref" target="_blank">View</a></td>
</tr>
</tbody>
</table>

\* Currently only available to Beta clients. Contact your
Xandr representative for more information.



<b>Note:</b> For **sample** files, see
available downloads under the Format and
Schemas section in <a
href="batch-log-level-data.md"
class="xref" target="_blank">Batch Log Level Data</a>.








