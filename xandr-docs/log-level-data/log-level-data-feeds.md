# Log Level Data Feeds

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> LLD feeds are not available via the
API.

</div>

Log Level Data (LLD) feeds contain event-level data that enables you to
build custom reporting and conduct in-depth analysis. Typically,
log-level data is used for reporting on dimensions not available in the
<span class="ph">Xandr</span> UI/API reports. It can also be used for
any analysis which requires event-level granularity, such as custom
conversion attribution or identifying pools of high-value users.

**To subscribe to Log-Level Data and learn about changes**

If you are interested in receiving log-level data feeds, talk to your
<span class="ph">Xandr</span> representative about the data your use
case will need, technical setup and pricing. 

<div class="section">

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
<a href="log-level-data-feeds.html#ID-00000062__log_level_feeds_list"
class="xref">List of log-level Feeds</a> section below.

<div class="note">

<span class="notetitle">Note:</span> **Timestamps**: If your log-level
data is provided in the avro format or one of the protobuf formats, the
timestamp field values will be supplied in UNIX Epoch time.

</div>

</div>

<div class="section">

## Use Cases

Typical uses for log-level data include:

- **Enhanced reporting** - report on additional dimensions such as
  geographic region.s
- **Segment management** -  build segments based on user actions and
  report on first- party data if your user IDs can be mapped to
  <span class="ph">Xandr</span> user IDs.
- **Conversion attribution** - see all actions leading to a conversion,
  experiment with custom conversion attribution.

</div>

<div class="section">

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
href="https://docs.xandr.com/bundle/log-level-data/page/batch-log-level-data.html"
class="xref" target="_blank">Batch Log-Level Data</a> for more
information on how to intake your data.

**Batch **

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d14785e151" class="entry cellborder"
style="text-align: left; vertical-align: top;">Features</th>
<th id="d14785e154" class="entry cellborder"
style="text-align: left; vertical-align: top;">Batch</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e151 ">Latency</td>
<td class="entry cellborder"
headers="d14785e154 ">over 1 hour</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e151 ">Viewability Information</td>
<td class="entry cellborder"
headers="d14785e154 ">✓</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e151 ">Failure recovery</td>
<td class="entry cellborder"
headers="d14785e154 ">✓</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e151 ">Export to Amazon S3</td>
<td class="entry cellborder"
headers="d14785e154 ">✓</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e151 ">Data quality guaranteed</td>
<td class="entry cellborder"
headers="d14785e154 ">✓</td>
</tr>
<tr class="even ">
<td colspan="2" class="entry cellborder"
headers="d14785e151 d14785e154 "><strong>Recommended use
cases</strong></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e151 ">Financial calculations</td>
<td class="entry cellborder"
headers="d14785e154 ">✓</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e151 ">Real-time dashboards</td>
<td class="entry cellborder"
headers="d14785e154 "> </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e151 ">Custom bidders</td>
<td class="entry cellborder"
headers="d14785e154 "> </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e151 ">Campaign performance metrics</td>
<td class="entry cellborder"
headers="d14785e154 ">Final, long-term analytics</td>
</tr>
</tbody>
</table>

</div>

LLD data is final and accurate. As a result, Batch LLD can be used to
make financial calculations. If <span class="ph">Xandr</span> discovers
an inconsistency, Batch LLD data will be reprocessed. 

The table below lists which feeds are available via LLD, the feed handle
for each and a link to view the feed columns.

</div>

<div id="ID-00000062__log_level_feeds_list" class="section">

##  List of Log Level Feeds

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d14785e275" class="entry cellborder"
style="text-align: left; vertical-align: top;">Feed</th>
<th id="d14785e278" class="entry cellborder"
style="text-align: left; vertical-align: top;">Feed Handle</th>
<th id="d14785e281" class="entry cellborder"
style="text-align: left; vertical-align: top;">Columns</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Standard Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code class="ph codeph">standard_feed</code> </td>
<td class="entry cellborder"
headers="d14785e281 "><a href="standard-feed.html"
class="xref">View</a></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Segment Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code class="ph codeph">segment_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="segment-feed.html"
class="xref">View</a></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Bid Landscape Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">bid_landscape_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="bid-landscape-feed.html"
class="xref">View</a></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Conversion Pixel Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code class="ph codeph">pixel_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="conversion-pixel-feed.html"
class="xref">View</a></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Video Event Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">video_events_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="video-events-feed.html"
class="xref">View</a></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Auction Categories Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">auction_category_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="auction-categories-feed.html"
class="xref">View</a></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Auction Segment Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">auction_segment_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="auction-segment-feed.html"
class="xref">View</a></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Key Value Auction Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">auction_kv_labels_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="key-value-auction-feed.html"
class="xref">View</a></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Universal Pixel Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">universal_pixel_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="universal-pixel-feed.html"
class="xref">View</a></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Curator Feed *</td>
<td class="entry cellborder"
headers="d14785e278 "><code class="ph codeph">curator_feed </code></td>
<td class="entry cellborder"
headers="d14785e281 "><a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">View</a></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d14785e275 ">Buyer Transparency Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">brand_transparency_feed</code></td>
<td class="entry cellborder"
headers="d14785e281 "><a href="buyer-transparency-feed.html"
class="xref">View</a> </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d14785e275 ">Incrementality Feed</td>
<td class="entry cellborder"
headers="d14785e278 "><code
class="ph codeph">incrementality_feed</code> </td>
<td class="entry cellborder"
headers="d14785e281 "><a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">View</a></td>
</tr>
</tbody>
</table>

</div>

\* Currently only available to Beta clients. Contact your
<span class="ph">Xandr</span> representative for more information.

<div class="note">

<span class="notetitle">Note:</span> For **sample** files, see available
downloads under the <span class="ph uicontrol">Format and Schemas</span>
section in <a
href="https://docs.xandr.com/bundle/log-level-data/page/batch-log-level-data.html"
class="xref" target="_blank">Batch Log Level Data</a>.

</div>

</div>

</div>

<div class="related-links">

- **[Batch Log Level Data](batch-log-level-data.html)**  
- **[Auction Categories Feed](auction-categories-feed.html)**  
- **[Auction Segment Feed](auction-segment-feed.html)**  
- **[Bid Landscape Feed](bid-landscape-feed.html)**  
- **[Buyer Transparency Feed](buyer-transparency-feed.html)**  
- **[Conversion Pixel Feed](conversion-pixel-feed.html)**  
- **[Curator Feed](curator-feed.html)**  
- **[Key Value Auction Feed](key-value-auction-feed.html)**  
- **[Query String Feed](query-string-feed.html)**  
- **[Segment Feed](segment-feed.html)**  
- **[Standard Feed](standard-feed.html)**  
- **[Universal Pixel Feed](universal-pixel-feed.html)**  
- **[Video Events Feed](video-events-feed.html)**  

</div>
