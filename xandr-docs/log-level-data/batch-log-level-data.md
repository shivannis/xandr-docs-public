# Batch Log Level Data

<div class="body">

Batch Log-level Data (LLD) allows you to retrieve and track feeds of
log-level event data that include dimensions not available in the
<span class="ph">Xandr</span> UI or via the API <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> in a batch-processed
manner. Feeds are generated hourly and are split into one or more files
(see <a href="batch-log-level-data.html#ID-000001c6__file_formats_schemas"
class="xref">File Formats</a> section below). The format of the file you
receive will depend on what you specified when you subscribed (e.g.,
Avro, Protobuf, Protobuf-delimited).

For general information about Log-Level Data, see <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log-level Data feeds</a>.

<div id="ID-000001c6__file_formats_schemas" class="section">

## File Formats & Schemas

You may specify one or more of following formats when subscribing to the
service.

Use the downloads provided below for packaged example files and code for
consuming Log-Level Data files.

<div class="note">

<span class="notetitle">Note:</span> Example files are created to assist
you when testing the implementation you will use to consume Log-Level
Data files. To ease testing, the example files are somewhat simpler than
the generated files you will retrieve in production:

- Example files for the **protobuf** format are not compressed (in
  production, they are Snappy compressed)
- Example data does not contain values that are typical for a given
  column. Instead, columns are populated with the column's index number
  converted to the column's type.

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d10832e103" class="entry cellborder"
style="vertical-align: top">Version</th>
<th id="d10832e106" class="entry cellborder"
style="vertical-align: top">Date Released</th>
<th id="d10832e109" class="entry cellborder"
style="vertical-align: top">Schemas Zip</th>
<th id="d10832e112" class="entry cellborder"
style="vertical-align: top">Example Files Zip</th>
<th id="d10832e115" class="entry cellborder"
style="vertical-align: top">Example Code Zip (includes schemas + example
files)</th>
<th id="d10832e119" class="entry cellborder"
style="vertical-align: top">Notes</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.37</td>
<td class="entry cellborder"
headers="d10832e106 ">June 22, 2023</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.37-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.37-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.37-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code class="ph codeph">region_id</code> to
the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.36</td>
<td class="entry cellborder"
headers="d10832e106 ">May 2, 2023</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.36-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.36-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.36-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Deprecated <code
class="ph codeph">data_costs</code> from the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.35</td>
<td class="entry cellborder"
headers="d10832e106 ">March 8, 2023</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.35-schemas-sources-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.35-example-files-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.35-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code
class="ph codeph">fallback_ad_index</code> to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.31</td>
<td class="entry cellborder"
headers="d10832e106 ">February 1, 2023</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.31-schemas-sources-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.31-example-files-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-1.0-SNAPSHOT-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code
class="ph codeph">segment_data_costs</code> and <code
class="ph codeph">feature_costs</code> to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.27</td>
<td class="entry cellborder"
headers="d10832e106 ">November 1, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.27-schemas-sources-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.27-example-files-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.27-all.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">A new field, <code
class="ph codeph">extended_ids</code>, has been added to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a> and the <a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">Curator Feed</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.26</td>
<td class="entry cellborder"
headers="d10832e106 ">October 14, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.26-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.26-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.26-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">The <a
href="https://docs.xandr.com/bundle/log-level-data/page/buyer-transparency-feed.html"
class="xref" target="_blank">Buyer Transparency Feed</a> (<code
class="ph codeph">brand_transparency_feed</code>) is now a fully
supported log-level feed (it was previously an alpha release).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.25</td>
<td class="entry cellborder"
headers="d10832e106 ">September 8, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.25-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.25-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.25-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Two new fields, <code
class="ph codeph">device_unique_id</code>  and <code
class="ph codeph">ip_address</code> have been added to the  <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/log-level-incrementality-feed.html"
class="xref" target="_blank">Incrementality Feed</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.24</td>
<td class="entry cellborder"
headers="d10832e106 ">July 22, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.24-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.24-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.24-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">A new field, <code
class="ph codeph">postal_code_ext</code>, has been added to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.22</td>
<td class="entry cellborder"
headers="d10832e106 ">July 21, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.22-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.22-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.22-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code
class="ph codeph">device_id</code> field to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">Curator Feed</a>. These IDs values can be
looked up by using the <span class="ph">Xandr</span> API <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>. </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.21</td>
<td class="entry cellborder"
headers="d10832e106 ">June 18, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.21-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.21-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-0.5.21-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added 3 new fields, <code
class="ph codeph">operating_system</code>, <code
class="ph codeph">browser</code>, and <code
class="ph codeph">language</code> to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">Curator Feed</a>. These values can be
looked up by using the <span class="ph">Xandr</span> API <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-service.html"
class="xref" target="_blank">Operating System Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/browser-service.html"
class="xref" target="_blank">Browser Service</a>, and <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a> respectively. </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.20</td>
<td class="entry cellborder"
headers="d10832e106 ">May 20, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.20-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.20-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.20-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added a new field, <code
class="ph codeph">device_make_id</code>, to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>. The field contains the
ID of the device make, which is generally the manufacturer of the device
(e.g., Samsung). To map device make IDs to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.18</td>
<td class="entry cellborder"
headers="d10832e106 ">April 19, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.18-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.18-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.18-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added enhancements to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">Curator Feed</a> (curator_feed). </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.15</td>
<td class="entry cellborder"
headers="d10832e106 ">March 31, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.15-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.15-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.15-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Added new field,  <code
class="ph codeph">personal_identifiers</code>, to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>. This field of "repeated"
type appears to both buyers and sellers for transacted, non-transacted
and viewed impressions.</li>
<li>Added the initial version of the <a
href="https://docs.xandr.com/bundle/log-level-data/page/curator-feed.html"
class="xref" target="_blank">Curator Feed</a> (<code
class="ph codeph">curator_feed</code>). </li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.10</td>
<td class="entry cellborder"
headers="d10832e106 ">February 4, 2021</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.10-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.10-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.10-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>The following changes have been made to the the <a
href="https://docs.xandr.com/bundle/log-level-data/page/buyer-transparency-feed.html"
class="xref" target="_blank">Buyer Transparency Feed</a>:
<ul>
<li>the following fields were added under the <code
class="ph codeph">bid message</code> (index <code
class="ph codeph">9</code>):
<ul>
<li><code class="ph codeph">external_campaign_id</code></li>
<li><code class="ph codeph">insertion_order_id</code></li>
<li><code class="ph codeph">bidder_seat_id</code></li>
<li><code class="ph codeph">bidder_seat_name</code></li>
</ul></li>
<li>The <code class="ph codeph">sasc_cap_savings</code> field was added
under the <code class="ph codeph">result message</code> (index <code
class="ph codeph">10</code>).</li>
</ul></li>
<li><p>The <code class="ph codeph">custom_parameters</code> field (index
<code class="ph codeph">17</code>) in the <a
href="https://docs.xandr.com/bundle/log-level-data/page/universal-pixel-feed.html"
class="xref" target="_blank">Universal Pixel Feed</a> has been changed
from an optional field to a repeated one.</p>
<p>See the documentation for the individual feeds for more information
on the fields that have been added.</p></li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.7</td>
<td class="entry cellborder"
headers="d10832e106 ">April 6, 2020</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.7-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.7-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.7-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added 4 new fields to the <a
href="https://docs.xandr.com/bundle/log-level-data/page/universal-pixel-feed.html"
class="xref" target="_blank">Universal Pixel Feed</a>. The new fields
are:
<ul>
<li> <code class="ph codeph">traffic_type</code> - The source of the
traffic being tracked by the pixel. Possible values are <code
class="ph codeph">WEB</code> or <code class="ph codeph">APP</code></li>
<li><code class="ph codeph">application_id</code> - The ID of the
application (in the app store) that the pixel has been placed on. This
value can be numeric or alphanumeric (e..g, <code
class="ph codeph">com.xandr.application_name</code>)</li>
<li><code class="ph codeph">device_unique_id</code> - The unique
identifier representing the mobile device (The value of this field will
be <code class="ph codeph">null</code> except for specific
integrations). The numeric prefix indicates the type of unique device
identifier:
<ul>
<li><code class="ph codeph">0</code> = IDFA (Apple ID for
Advertising)</li>
<li><code class="ph codeph">1</code> = SHA1</li>
<li><code class="ph codeph">2</code> = MD5</li>
<li><code class="ph codeph">3</code> = ODIN</li>
<li><code class="ph codeph">4</code> = OPENUDID</li>
<li><code class="ph codeph">5</code> = AAID (Android Advertising
ID)</li>
<li><code class="ph codeph">6</code> = WINDOWSADID (Microsoft
Advertising ID).</li>
</ul></li>
<li><code class="ph codeph">custom_parameters</code> - Contains all
custom parameters that were sent with the pixel fire.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.4</td>
<td class="entry cellborder"
headers="d10832e106 ">January 27, 2020</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.4-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.4-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.4-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Correction to the schema used to release the new
<a
href="https://docs.xandr.com/bundle/log-level-data/page/universal-pixel-feed.html"
class="xref" target="_blank">Universal Pixel Feed</a>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.2</td>
<td class="entry cellborder"
headers="d10832e106 ">November 7, 2019</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.2-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.2-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.2-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added new <code
class="ph codeph">external_campaign_id</code> field to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Standard Feed</a> in LLD. This new optional
field should only appear to sellers on resold impression rows. The value
of this field is passed in via the <code
class="ph codeph">cid</code> field on a DSP's bid. Since the <code
class="ph codeph">cid</code> field is optional, the new <code
class="ph codeph">external_campaign_id</code> field will only have data
when the external DSPs populate it on their bid(s).
<p>See the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Open RTB specification</a> for more info on
the <code class="ph codeph">cid</code> field.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.5.1</td>
<td class="entry cellborder"
headers="d10832e106 ">September 10, 2019</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.5.1-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.5.1-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.5.1-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Added <code class="ph codeph">partner_fees</code> to <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.</li>
<li>Added <code class="ph codeph">partition_time_millis</code> field to
all feeds to simplify the loading and partitioning of data into
databases.</li>
<li>Added <code class="ph codeph">hashed_user_id_64</code> field to <a
href="https://docs.xandr.com/bundle/log-level-data/page/conversion-pixel-feed.html"
class="xref" target="_blank">Conversion Pixel</a> and <a
href="https://docs.xandr.com/bundle/log-level-data/page/segment-feed.html"
class="xref" target="_blank">Segment feeds</a> for clients who only want
anonymized personal data.</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.4.4</td>
<td class="entry cellborder"
headers="d10832e106 ">May 29, 2019</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.4.4-schemas-sources-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.4.4-example-files-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.4.4-stable.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code class="ph codeph">tc_string</code> to
standard feed.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.3.4</td>
<td class="entry cellborder"
headers="d10832e106 ">April 10, 2019</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.3.4-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.3.4-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.3.4.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added <code class="ph codeph">split_id</code> to
standard feed.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.3.3</td>
<td class="entry cellborder"
headers="d10832e106 ">April 5, 2019</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.3.3-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.3.3-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.3.3.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Added <code class="ph codeph">hashed_user_id_64</code> to segment
feed.</li>
<li>Added <code class="ph codeph">hashed_user_id_64</code>, <code
class="ph codeph">latitude_trunc</code>, <code
class="ph codeph">longitude_trunc</code> to standard untransacted
feed.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.3.0</td>
<td class="entry cellborder"
headers="d10832e106 ">October 4, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.3.0-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.3.0-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.3.0.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Added Avro schemas and example files</li>
<li>Added <code class="ph codeph">partition_time_millis</code> column to
all feeds for partition filtering per record</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.2.4</td>
<td class="entry cellborder"
headers="d10832e106 ">August 22, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.2.4-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.2.4-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.2.4.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Removed <code class="ph codeph">hashed_device_unique_id</code> from
standard feed schema (no longer used)</li>
<li>Added schema for standard untransacted feed</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.9</td>
<td class="entry cellborder"
headers="d10832e106 ">April 12, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.9-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.9-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.9.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 "><ul>
<li>Allow specifying protobuf version, e.g. <code
class="ph codeph">-Dprotobuf.version="2.5.0"</code></li>
<li>Patched schema class finder to work with proto3 generated code</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.8</td>
<td class="entry cellborder"
headers="d10832e106 ">March 16, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.8-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.8-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.8.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added proto2 syntax hint to make proto files
compilable with proto3</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.7</td>
<td class="entry cellborder"
headers="d10832e106 ">March 12, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.7-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.7-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.7.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Protobuf-delimited is now GZIP-compressed, updated
sample code accordingly</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.6</td>
<td class="entry cellborder"
headers="d10832e106 ">March 7, 2018</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.6-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.6-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.6.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added anonymized personal data fields to various
relevant LLD schemas</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.4</td>
<td class="entry cellborder"
headers="d10832e106 ">December 8, 2017</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.4-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.4-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.4.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Added imps_for_budget_caps_pacing column to
standard_feed</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10832e103 ">0.1.3</td>
<td class="entry cellborder"
headers="d10832e106 ">October 16, 2017</td>
<td class="entry cellborder"
headers="d10832e109 "><a
href="lld/attachments/lld-schemas-0.1.3-schemas-source.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e112 "><a
href="lld/attachments/lld-schemas-0.1.3-example-files.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e115 "><a
href="lld/attachments/lld-schemas-example-package-0.1.3.zip"
class="xref">Download</a></td>
<td class="entry cellborder"
headers="d10832e119 ">Initial release</td>
</tr>
</tbody>
</table>

</div>

**Protobuf (Sequence file wrapped Protocol Buffers)**

<div class="note">

<span class="notetitle">Note:</span> Only version 2.5.0 of protobuf is
currently supported.

</div>

Files are Snappy compressed <a
href="https://hadoop.apache.org/docs/r2.6.2/api/org/apache/hadoop/io/SequenceFile.html"
class="xref" target="_blank">Hadoop Sequence files</a> where the value
for each record is a <a
href="https://hadoop.apache.org/docs/r2.6.2/api/org/apache/hadoop/io/BytesWritable.html"
class="xref" target="_blank">BytesWriteable</a>, the payload of which is
an encoded
<a href="https://developers.google.com/protocol-buffers/" class="xref"
target="_blank">Protocol buffer</a> message.

All schemas specify that fields are optional and `null` values are unset
fields in the protobuf message. See the individual feeds under <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log-level data feeds</a> for the conditions
that cause a field's value to be `null` and for more details on column
availability.

See <a href="log-level-data-protocol-buffers.html" class="xref">Protobuf
Install and Configuration</a> for instructions on how to install and
configure the protobuf compiler and to download a project that includes
the schemas and sample code.

**Protobuf-delimited (Protocol Buffers)**

<div class="note">

<span class="notetitle">Note:</span> Only version 2.5.0 of protobuf is
currently supported.

</div>

Files are GZIP compressed files that contain length-delimited
<a href="https://developers.google.com/protocol-buffers/" class="xref"
target="_blank">Protocol buffer</a> messages. Each record is a <a
href="https://developers.google.com/protocol-buffers/docs/encoding#varints"
class="xref" target="_blank">varint</a> specifying the length of the
message, followed by the protobuf message itself. One reason to use our
protobuf-delimited format instead of our protobuf format is that reading
protobuf-delimited files does not require Hadoop or Hadoop with native
Snappy support.

All schemas specify that fields are optional and `null` values are unset
fields in the protobuf message. See the individual <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">feed service pages</a> for the conditions
that cause a field's value to be `null` and for more details on column
availability.

See <a href="log-level-data-protocol-buffers.html" class="xref">Protobuf
Install and Configuration</a> for instructions on how to install and
configure the protobuf compiler, and to download a project that includes
the schemas and sample code.

**Avro**

Avro is a data serialization framework that bundles schemas with data.
For compression, the DEFLATE codec (level = 1) is used. For more
details,
see <a href="https://avro.apache.org/docs/current/" class="xref"
target="_blank">https://avro.apache.org/docs/current/</a>.

<div class="note">

<span class="notetitle">Note:</span> Unlike in our protobuf formats,
`null` values are never used. Missing or unset fields are encoded with
their default values, as specified in the feed schema.

Avro is offered for simpler integration with existing third-party Cloud
systems. Due to incompatibilities found while testing integrations, a
field that is "`enum`" in protobuf is sent as Avro "`int`".

</div>

</div>

</div>

<div class="related-links">

- **[Log Level Data - Protocol
  Buffers](log-level-data-protocol-buffers.html)**  
- **[Log Level Data - Cloud
  Export](log-level-data-cloud-export.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="log-level-data-feeds.html" class="link">Log Level Data
Feeds</a>

</div>

</div>

</div>
