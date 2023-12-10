---
Title : Feed Status Service
Description : The Feed Status Service lets you check when new reporting data is
ms.date: 10/28/2023
ms.custom: digital-platform-api
available via the <a
href="network-analytics-feed.md"
---


# Feed Status Service





The Feed Status Service lets you check when new reporting data is
available via the <a
href="network-analytics-feed.md"
class="xref" target="_blank">Network Analytics Feed</a>. New data
becomes available when:

- New hours of reporting data become available
- Previous hours of reporting data have been updated. This is a rare
  event which will occur if we need to reprocess the data for a feed for
  a given hour.



<b>Note:</b> This service is not available for
the <a
href="clicktrackers-feed.md"
class="xref" target="_blank">Clicktrackers Feed</a>.





<b>Note:</b> For more detailed instructions on
how to use this feed in your integration, see <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a>.







## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="feed-status-service__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="feed-status-service__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="feed-status-service__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__2"><a
href="https://api.appnexus.com/feed-status?type=network_analytics_feed"
class="xref"
target="_blank">https://api.appnexus.com/feed-status?type=network_analytics_feed</a></td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__3">Check the status of your Network
Analytics Feed</td>
</tr>
</tbody>
</table>





## JSON Fields

This service returns only two fields in an array of objects:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="feed-status-service__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="feed-status-service__entry__8"
class="entry colsep-1 rowsep-1">Type</th>
<th id="feed-status-service__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__7"><code
class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__8">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__9">The date and hour of reporting
data whose status you're interested in.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__7"><code
class="ph codeph">last_run</code></td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__8">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="feed-status-service__entry__9">When the reporting data for
<code class="ph codeph">hour</code> was last updated by our data
pipeline. This is usually a few hours later than the value of <code
class="ph codeph">hour</code>.</td>
</tr>
</tbody>
</table>



<b>Note:</b> Timestamps are reported in the
UTC timezone, so you'll need to manually translate the UTC time to your
standard timezone.







## Examples

This service returns the last 30 days of hourly data with a simple `GET`
call as shown below. For instructions on how to use this information to
integrate with your own reporting systems, see <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a>.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/feed-status?type=network_analytics_feed'

{
    "response": {
        "status": "OK",
        "num_elements": 732,
        "start_element": 0,
        "hours": [
            {
                "hour": "2013-11-20 00:00:00",
                "last_run": "2013-11-20 03:10:55"
            },
            {
                "hour": "2013-11-20 01:00:00",
                "last_run": "2013-11-20 05:10:05"
            },
            ... many, many hours of data...
            {
                "hour": "2013-12-20 11:00:00",
                "last_run": "2013-12-20 13:55:50"
            }
        ]
    }
}
```





## Related Topics

- <a
  href="bulk-reporting-feeds.md"
  class="xref" target="_blank">Bulk Reporting Feeds</a>
- <a
  href="report-service.md"
  class="xref" target="_blank">Report Service</a>






