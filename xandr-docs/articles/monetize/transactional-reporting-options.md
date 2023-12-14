---
Title : Transactional Reporting Options
Description : This page describes a number of reporting options for clients who need
ms.date: 10/28/2023
to go beyond the capabilities exposed by
Monetize. The reporting options described below
---


# Transactional Reporting Options





This page describes a number of reporting options for clients who need
to go beyond the capabilities exposed by
Monetize. The reporting options described below
can be used for:

- Monitoring by your ad operations teams
- Optimization by your analytics teams
- Advertiser or publisher client dashboards and reports

The reporting options described here have different levels of resource
requirements and transactional granularity. For more information, see
the relevant sections below.

Overview

The table below provides an overview of the transactional reporting
options we offer. It also lists features, resource requirements, and has
links to detailed documentation.

For more information about each option, click its name in the
**Option** column.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001912__entry__1" class="entry">Option</th>
<th id="ID-00001912__entry__2" class="entry">Documentation</th>
<th id="ID-00001912__entry__3" class="entry">Resource Level</th>
<th id="ID-00001912__entry__4" class="entry">Requirements</th>
<th id="ID-00001912__entry__5" class="entry">Features</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001912__entry__1"><a
href="transactional-reporting-options.md#ID-00001912__ID-000019c1"
class="xref">Reporting</a></td>
<td class="entry" headers="ID-00001912__entry__2"><a
href="reporting-guide.md" class="xref">Reporting Guide</a></td>
<td class="entry" headers="ID-00001912__entry__3">Low</td>
<td class="entry" headers="ID-00001912__entry__4">Ability to manipulate
reporting data offline (optional)</td>
<td class="entry" headers="ID-00001912__entry__5"><ul>
<li>Manual processing</li>
<li>Can whitelabel UI for client reporting</li>
<li>Can manually export and manipulate reports</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001912__entry__1"><a
href="transactional-reporting-options.md#ID-00001912__ID-000014dl"
class="xref">Reporting API</a></td>
<td class="entry" headers="ID-00001912__entry__2"><ul>
<li><a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a></li>
<li><a
href="xandr-api/report-pagination.md"
class="xref" target="_blank">Report Pagination</a></li>
<li><a
href="xandr-api/bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a></li>
</ul></td>
<td class="entry" headers="ID-00001912__entry__3">Medium</td>
<td class="entry" headers="ID-00001912__entry__4"><ul>
<li>Scripts to pull data</li>
<li>Offline data storage for local housing</li>
</ul></td>
<td class="entry" headers="ID-00001912__entry__5"><ul>
<li>Can be automated</li>
<li>Access to Bulk Reporting Feeds</li>
<li>Additional granularity beyond Monetize
reports</li>
<li>Use of custom <code class="ph codeph">code</code> field</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001912__entry__1"><a
href="transactional-reporting-options.md#ID-00001912__ID-000019e6"
class="xref">Creative Macros</a></td>
<td class="entry" headers="ID-00001912__entry__2"><ul>
<li><a href="creative-macros.md" class="xref"
title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
Macros</a></li>
<li><a href="create-a-placement-tag-macro.md" class="xref"
title="If you would like even more flexibility than what our existing macros provide, you can create a placement tag macro, which will send custom data on the placement ad call so that you can use it in your creative tag. You can create a placement tag macro if you have access to both managed supply and demand.">Create
a Placement Tag Macro</a></li>
</ul></td>
<td class="entry" headers="ID-00001912__entry__3">Medium-High</td>
<td class="entry" headers="ID-00001912__entry__4"><ul>
<li>HTTP or tag request listening</li>
<li>Query string parsing</li>
<li>Aggregation of parsed fields</li>
</ul></td>
<td class="entry" headers="ID-00001912__entry__5">Auction level
granularity real time. Option to choose which parameters to ingest. Raw
data not processed by Xandr.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001912__entry__1"><a
href="transactional-reporting-options.md#ID-00001912__ID-000019de"
class="xref">Log Level Data</a></td>
<td class="entry" headers="ID-00001912__entry__2"><a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-Level Data Feeds</a></td>
<td class="entry" headers="ID-00001912__entry__3">High</td>
<td class="entry" headers="ID-00001912__entry__4">Data storage and
aggregation system</td>
<td class="entry" headers="ID-00001912__entry__5"><ul>
<li>Auction level granularity</li>
<li>Additional parameters not available in <span
class="ph">Monetize reporting</li>
<li>Large data sets</li>
<li>Aggregation is <strong>not</strong> handled by <span
class="ph">Xandr</li>
</ul></td>
</tr>
</tbody>
</table>



Reporting

Reporting modules are accessible to all Monetize
clients. Key features and caveats include:

- 2-3 hour reporting delay depending on the report (except daily reports
  which close the following day)
- Data aggregation to hourly or daily granularity depending on the
  report
- Lookback windows are limited and vary depending on the fields being
  analyzed
- No auction level impression data
- Certain data elements (e.g., IP address) are not available
- Need to be logged in to run these reports (though API equivalents
  often exist)

Reports can be delivered through various automated options as well as on
an ad hoc basis via the user interface. There is also the option to
whitelabel the reporting UI and provide advertisers or publishers a
dashboard they can run reports in.

Reporting APIs

The aggregation, filtering and processing of the data available via UI
reporting can be conducted automatically using API scripts. This method
allows you to store data for longer than is possible in
Monetize reporting. Certain reporting services
offer more granular data via the API; there is also the ability to use
<a
href="xandr-api/bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a> to synchronize
offline data sets with Xandr-aggregated data
over the last 30 days. In addition, there is a custom `code` field that
can be used for filtering and reporting through the API to map
Monetize objects back to objects in an external
system or data store. Buyers will often store data pulled via the API
offline to present to clients in delivery or metrics dashboards.

Log-Level Data

Each feed has different parameters that can be valuable to clients
looking for auction-level granularity or metrics not available in
Monetize reporting. To handle this data, you
must be able to support offline aggregation and large scale storage
capabilities. See <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-level Data (LLD) Feeds</a> for more
details.

Creative Macros

Creative macros are automatically populated by
Xandr on each auction. There are different
methods to receive these filled-in creative macros:

- Build the macros into impression tracker query strings. The impression
  trackers could then be attached to creatives on the buy or sell side.
  They can also be piggybacked onto placements on the sell side.
- Build the macros directly into JavaScript creative tag or URL query
  strings. This could be used for creative content decisioning (i.e.,
  certain populated macros flag which creative to deliver) as well as
  for the ingestion and storage of auction level parameters.

This impression data stream is available realtime, unlike the other
reporting options mentioned in this article. Reporting and taking action
based on this data is dictated by client data ingestion methods and
processing time.

Note that these macros can include raw data grabbed from the impressions
(unlike Log Level Data which includes parameters processed by
Xandr). For example, creative macros like
`${USER_AGENT}` and `${REFERRER_URL}` will include raw strings of the
impressions' full referrer (not just the domain) and user agent from the
HTTP header (not just device make, operating system, browser, and model
information) which can be valuable.

The same creative macros would also function for landing page URL
parameters to store click information.





**Related Topics**

- <a href="general-reporting-concepts.md" class="xref">General Reporting
  Concepts</a>
- <a href="creative-macros.md" class="xref"
  title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
  Macros</a>
- <a
  href="xandr-api/report-service.md"
  class="xref" target="_blank">Report Service</a>
- <a
  href="log-level-data/log-level-data-feeds.md"
  class="xref" target="_blank">Log Level Data Feeds</a>






