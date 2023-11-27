---
Title : Reporting and Tracking
Description : ## Reporting
ms.custom : data-providers
ms.date : 10/28/2023
Xandr does not provide segment usage reporting
for data providers direct clearing with data buyers (i.e. there is no
---


# Reporting and Tracking





## Reporting

Xandr does not provide segment usage reporting
for data providers direct clearing with data buyers (i.e. there is no
reporting for data providers outside of the Data Marketplace). The
reports that are available in  show various
metrics for the delivery of advertisers, insertion order, line items,
and creatives. Currently, grouping by segment targeted is not available
on these reports. If a data provider wishes to receive a report on the
delivery per campaign targeting their segments, they should work with
the data buyer to <a
href="reporting-instructions.md"
class="xref" target="_blank">schedule delivery of a report</a> to be
emailed from .





## Tracking

The most common methods used for tracking the user of shared segments
are impression pixels and client reporting.

- **Impression Pixels:** Impression pixels can be associated with each
  creative that is served by a campaign using the shared segments to
  target users/inventory. The impression pixel will call your servers
  each time the creative is served, informing you of the number of
  impressions served against the segments. 
- **Click Trackers:** It is possible to insert another link in the click
  tracking chain which will redirect the user to an external click
  tracker, giving you visibility into the performance of a campaign. 
- **Conversion Trackers:** It is possible to redirect from a conversion
  pixel to an external conversion tracker, giving you visibility into
  the performance of a campaign. Please note that you will be
  responsible for performing attribution related to this conversion
  tracker
- **Client Reporting:** Data recipients may schedule or otherwise send
  reports to the data provider for campaigns and line items utilizing
  the shared segments for targeting. Please see <a
  href="reporting-instructions.md"
  class="xref" target="_blank">Reporting Instructions</a> for steps on
  how clients can schedule usage reports to be delivered to the data
  provider.





## Related Topics



- <a
  href="xandr-api/reporting-services.md"
  class="xref" target="_blank">Reporting Services</a>
- <a
  href="xandr-api/segment-loads-report.md"
  class="xref" target="_blank">Segment Loads Report</a>








