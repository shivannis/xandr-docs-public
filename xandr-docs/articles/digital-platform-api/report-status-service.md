---
Title : Report Status Service
Description : The Report Status Service is used to determine whether a report has been
run and is ready for download.
---


# Report Status Service



The Report Status Service is used to determine whether a report has been
run and is ready for download.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034b8__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000034b8__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000034b8__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000034b8__entry__2"><a
href="https://api.appnexus.com/report-status" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/report-status</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000034b8__entry__3">View
the status of all reports</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000034b8__entry__2"> <a
href="https://api.appnexus.com/report-status?report_type=network_analytics%2cadvertiser_analytics"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/report-status?report_type=network_analytics,advertiser_analytics</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000034b8__entry__3">View
the status of specific reports using a filter</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034b8__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000034b8__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000034b8__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__10"><code
class="ph codeph">max_hour_closed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__11">Timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000034b8__entry__12">The
time (in UTC) at which the data pipeline finished processing this
report's data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__10"><code
class="ph codeph">max_hour_closed_conversion</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__11">Timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000034b8__entry__12"><strong>Deprecated</strong>. Conversion
data is now processed with other report data, instead of being
delayed.</td>
</tr>
</tbody>
</table>





## Example

**An example call to the report**

``` pre
$ curl -b cookies "https://api.appnexus.com/report-status"
{
    "response": {
        
        "reports": {
            "segment_load": "",
            "inventory_segment_daily_uniques": "",
            "inventory_domain_analytics": "",
            "inventory_source_segment_daily_uniques": "",
            "inventory_source_daily_uniques": "",
            "inventory_source_domain_analytics": "",
            "inventory_source_analytics": "",
            "marketer_analytics": "",
            "marketer_billing": {
                "max_hour_closed": "2012-12-03 15:00:00"
            },
            "analytics": "",
            "network_carrier_analytics": "",
            "network_device_analytics": "",
            "network_analytics_test2": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "seller_site_domain": "",
            "ttui_seller_platform_billing": "",
            "network_advertiser_analytics_larry": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "site_domain_performance_backup": "",
            "site_domain_daily_uniques": "",
            "clicktrackers": "",
            "network_analytics_feed_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "advertiser_analytics_daily_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "publisher_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "network_publisher_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "admin_buyer_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "admin_seller_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "opt_dash_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "network_advertiser_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "advertiser_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "network_analytics_test": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "advertiser_frequency_recency": "",
            "network_advertiser_frequency_recency": "",
            "pixel_fired": "",
            "network_site_domain_performance": "",
            "attributed_conversions": "",
            "network_analytics_feed": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "network_billing": {
                "max_hour_closed": "2012-12-03 15:00:00"
            },
            "advertiser_analytics_daily": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "site_domain_performance": "",
            "content_category_volume": {
                "max_hour_closed": "na"
            },
            "bidder_platform_buyer": "",
            "publisher_analytics": "",
            "network_publisher_analytics": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "admin_buyer_analytics": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "admin_seller_analytics": {
                "max_hour_closed": "2012-10-31 00:00:00"
            },
            "admin_platform_billing": "",
            "admin_platform_seller": "",
            "seller_platform_billing": "",
            "platform_seller": "",
            "platform_buyer": "",
            "buyer_platform_billing": "",
            "opt_dash_analytics": {
                 "max_hour_closed": "2012-10-31 00:00:00"
            },
            "inventory_daily_uniques": "",
            "network_advertiser_analytics": {
                 "max_hour_closed": "2012-10-31 00:00:00"
            },
            "advertiser_analytics": {
                 "max_hour_closed": "2012-10-31 00:00:00"
            },
            "network_analytics": {
                 "max_hour_closed": "2012-10-31 00:00:00"
            },
            "seller_monetization": {
                "max_hour_closed": "2014-04-15 00:00:00"
            }
        },
        "status": "OK"
    }
    }
```





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/reporting-services.html"
  class="xref" target="_blank">Reporting Services</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/read-only-services.html"
  class="xref" target="_blank">Read-Only Services</a>






