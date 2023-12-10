---
Title : Offline Attribution Report
Description : The Offline Attribution report is used to analyze your line item's
ms.date: 10/28/2023
ms.custom: digital-platform-api
performance in influencing in-store purchases among your target
audiences. The Offline Attribution report is only accessible to clients
---


# Offline Attribution Report





The Offline Attribution report is used to analyze your line item's
performance in influencing in-store purchases among your target
audiences. The Offline Attribution report is only accessible to clients
who have Offline Sales Attribution enabled for their line items.



For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="offline-attribution-report.md#offline-attribution-report__example"
class="xref">example</a> below. This report requires specifying the
advertiser ID as part of the URL, for example:

``` pre
 https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```





>

## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- last_7_available_days
- last_14_available_days
- last_30_available_days
- last_365_days



**Data Retention Period**

This report has a daily time granularity and can retrieve data from the
past 120 days.



<b>Note:</b>

- To run a report for a custom time frame, set the `start_date` and
  `end_date` fields in your report request. For more details about these
  fields, see <a
  href="report-service.md"
  class="xref" target="_blank">Report Service</a>.
- You can't make a specific time zone selection because NCS data uses
  the time zone(s) from where sales take place.





>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="offline-attribution-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="offline-attribution-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="offline-attribution-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="offline-attribution-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="offline-attribution-report__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"2021-10-10"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The day on
which NCS generated the report. The date displayed for this dimension
will match the date displayed for the <code
class="ph codeph">analysis_start_date</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"5533431"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The ID of the
insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"My IO"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The name of
the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"14545960"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The ID of the
line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"NCS Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The name of
the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">flight_id</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"12396335"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The ID of the
flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">flight.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"2021-04-16 00:00:00 UTC"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The start
date of the flight.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">flight.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"2021-04-30 23:59:59 UTC"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The end date
of the flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"1234"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The ID of a
split.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"my split"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The name of a
split.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">analysis_end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"2021-10-10"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The last day
of the purchase interval being reported for each cohort.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">analysis_rejection_reason</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"DMA minimum not met, Retailer minimum not met"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The error
that identifies which of the requirements for measurement weren't
met.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">analysis_start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"2021-10-03"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The first day
of the purchase interval being reported for each cohort.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">frequency_type</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"weekly"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The reporting
frequency selected for this line item or split.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">lookback_hours</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"flight_lifetime"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The lookback
window selected for this line item or split.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">product_id</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"10096"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The product
selection ID used to describe the product or products being
reported.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__1">product</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__4"><code
class="ph codeph">"BAKING SUPPLIES | MARS INCORPORATED | M&amp;M MARS"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__dimensions__entry__5">The product
selection name used to describe the product or products being
reported.</td>
</tr>
</tbody>
</table>




## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="offline-attribution-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="offline-attribution-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="offline-attribution-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The total number
of impressions served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The total number
of clicks recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The revenue
received from the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The cost to the
buying member for this inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The total amount
of costs accrued over the reported period of time. This generally
includes two types of costs: budgeted costs (media cost, data cost,
partner fees, serving fees, commissions) and publisher revenue if you
track publisher payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">Impressions that
are considered viewable as defined by the Interactive Advertising Bureau
(IAB): For at least one second, 50% of a creative's pixels (or 30% for a
creative with at least 242,500 pixels) must render on a screen.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">all_outlet_adjusted_number_of_trips</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The number of
trips to the store by households that have been during the analysis's
start and end dates. NCS only has data for some stores (outlets) within
the US, so it adjusts sales metrics to account for sales that occurred
across all outlets in the US.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">all_outlet_adjusted_penetration%</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3"><p>The
penetration percentage for the product, category, or brand during the
analysis's start and end dates. NCS only has data for some stores
(outlets) within the US, so it adjusts sales metrics to account for
sales that occurred across all outlets in the US.</p>

<b>Note:</b> <em>Penetration</em> measures
brand or category popularity. It is calculated by dividing the number of
people who've purchased a specific brand or category of goods at least
once in a given time period by the size of the relevant market's total
population.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">all_outlet_adjusted_total_spend</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">The number of
dollars spent by households on the product, category, or brand during
the analysis's start and end dates. NCS only has data for some stores
(outlets) within the US, so it adjusts sales metrics to account for
sales that occurred across all outlets in the US.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__1">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="offline-attribution-report__metrics__entry__3">For a video
creative, the number of times the video creative was viewed to
completion.</td>
</tr>
</tbody>
</table>




## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"offline_attribution"`, as well as the columns (dimensions and metrics)
and the `report_interval` that you want to retrieve. You can also filter
for specific dimensions, define granularity (`year`, `month`, `day`),
and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat report-request.json

{
    "report": {
        "report_type": "offline_attribution",
        "format": "csv",
        "report_interval": "last_365_days",
        "columns": [
            "month",
            "member_id",
            "line_item_id",
            "split_id",
            "all_outlet_adjusted_total_spend",
            "imps",
            "analysis_rejection_reason"
        ],
        "orders": [
            "member_id",
            "line_item_id",
            "split_id"
        ],
        "filters": [{
            "line_item_id": [14545960, 14545978]
        }]
    }
}
```

**`POST` the request to the Reporting Service**

In this example, we request execution of the report for advertiser 660.

``` pre
$ curl -b cookies -c cookies -X POST -d @offline_attribution 'https://api.appnexus.com/report?advertiser_id=660'

{
    "response":{
        "status":"OK",
        "report_id":"07af1282c9485adcef49c95fa5d7496b"
    }
}
```

**Use the Report ID to retrieve the report data**

The standard response includes the report data and a Download URL that
you can use to save the data to a file. If you want to get just the
Download URL without the report data, pass `"without_data"` in the query
string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=07af1282c9485adcef49c95fa5d7496b'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2011-11-16 23:51:14",
            "cache_hit": false,
            "fact_cache_hit": false,
            "json_request": "{\"report\":{\"report_type\":\"offline_attribution\",\"format\":\"csv\",\"report_interval\":\"last_365_days\",\"columns\":[\"month\",\"member_id\",\"line_item_id\",\"split_id\",\"all_outlet_adjusted_total_spend\",\"imps\",\"analysis_rejection_reason\"],\"orders\":[{\"order_by\":\"member_id\",\"direction\":\"ASC\"},{\"order_by\":\"line_item_id\",\"direction\":\"ASC\"},{\"order_by\":\"split_id\",\"direction\":\"ASC\"}],\"filters\":[{\"line_item_id\":[14545960,14545978]},{\"member_id\":\"958\"}],\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1622678400,\"start_date\":1591142400,\"user_id\":\"46052\"}",
            "header_info": "Report type: offline_attributions\nReport ID: 5dd162b83a0417e13859e5e243844329\n",
            "data": "day,campaign,booked_revenue,imps,clicks,click_thru_pct,site_domain\u000d\u000a2011-11-12,ExampleCampaign - 1
             (123456),.000000,24,0,.000000000000000000%,aaaa.com\u000d\u000a2011-11-13,ExampleCampaign - 2 (789012),.000000,9,0,
             .000000000000000000%,bbbb.net\u000d\u000a2011-11-12,ExampleCampaign - 3 (345678),.000000,2,0,.000000000000000000%,
             ccc.com\u000d\u000a2011-11-13,ExampleCampaign - 3 (345678),.000000,2,0,.000000000000000000%,cccc.de\u000du000a
             2011-11-14,ExampleCampaign - 3 (345678),.000000,10,0,.000000000000000000%,dddd.com\u000d\u000a2011-11-13,
             ExampleCampaign - 4 (901234), 2.574900,22,3,13.636363636363636364%,aaaa.com\u000d\u000a2011-11-15,ExampleCampaign - 3
             (345678),8.583000,2431,10,.411353352529823118%,abab.com\
             ...
            "url": "report-download?id=495d03a7667bac467bb488043ae336e9"
        },
        "execution_status": "ready"
    }
}
```

**Use the Download URL to save the report data to a file**

You use the `"url"` field in the response to save the report data to a
file. Simply make another `GET` call and identify the location and file
that you want to save to. Be sure to use the file the extension of the
`"format"` that you specified in your initial `POST` request.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=495d03a7667bac467bb488043ae336e9' > /tmp/site_domain.csv
```






