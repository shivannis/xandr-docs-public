---
Title : Targeted Segment Analytics Report
Description : The **Targeted Segment Analytics** report is an admin-only report designed to give you insight into how your segment targeting is affecting the performance of your in-flight campaigns. 
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Targeted Segment Analytics Report

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.

The **Targeted Segment Analytics** report is an admin-only report
designed to give you insight into how your segment targeting is
affecting the performance of your in-flight campaigns. Use cases for
this report include:



- Understanding which targeted segments (both behavioral and contextual)
  are driving impressions, clicks and conversions within a running
  campaign.
- Indexing the performance of targeted segments during the campaign to
  identify which segments are over- or underperforming.
- Understanding whether segments purchased from third parties are
  producing the desired performance.





<b>Note:</b> This feature is intended to
address campaign level performance; it does not include information such
as a segment's aggregate performance at the <a
href="advertiser-service.md"
class="xref" target="_blank">advertiser</a>, <a
href="insertion-order-service.md"
class="xref" target="_blank">insertion order</a>, or <a
href="line-item-service.md"
class="xref" target="_blank">line item</a> levels.



>

## Time Frame

This report's data is retained for 14 days, and is available in one day
intervals. All dates and times are given in UTC.

The `time_intervals` field in the request can be set to one of the
following:

- `last_14_days`





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000040cf__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-000040cf__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000040cf__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
month during which the impression took place.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
day on which the impression took place.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
member ID of the buyer.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
campaign ID of the campaign that purchased the impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">campaign_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
name of the campaign that purchased the impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">campaign</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
concatenated name and ID of the campaign that purchased the impression,
e.g., <code class="ph codeph">"Amazing Campaign (31)"</code>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">campaign_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
(optional) custom code associated with the campaign that purchased the
impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
segment ID of the user segment present for this impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">segment_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
name of the user segment present for this impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
concatenated name and ID of the user segment present for this
impression, e.g., <code
class="ph codeph">"Valuable Segment (314)"</code>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__1"><code
class="ph codeph">segment_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__3">The
(optional) custom code associated with the user segment present for this
impression.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
</tbody>
</table>





## Metrics



<b>Note:</b> The definition of each metric
listed below should read: "that took place during the selected <a
href="targeted-segment-analytics-report.md#ID-000040cf__TimeFrame_Targeted_Segment_Analysis_report"
class="xref">Time Frame.</a>"



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000040cf__entry__37"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-000040cf__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000040cf__entry__39"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-000040cf__entry__40"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
number of impressions that occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
number of clicks that took place.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">total_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_view_convs + post_click_convs</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total number of conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">convs_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">total_convs</code> / <code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
ratio of conversions to impressions that occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code class="ph codeph">ctr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code class="ph codeph">imps</code> /
<code class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
click-through-rate.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">total_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_view_revenue + post_click_revenue</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total revenue booked through direct advertisers (at the line item
level).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_view_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_view_convs</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
number of post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
amount of revenue generated by post-view conversions through direct
advertisers (at the line item level).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_click_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_click_convs</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
number of post-click conversions that occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
amount of revenue generated by post-click conversions through direct
advertisers (at the line item level).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_view_convs_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_view_convs</code> / <code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
rate of post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">post_click_convs_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">post_click_convs</code> / <code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
rate of post-click conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">spend</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total marketer spend across both direct and real time media buys for
this segment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">media_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">media_cost</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total cost of the inventory purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">revenue_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">total_revenue</code> / <code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total revenue per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">revenue_ecpc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">total_revenue</code> / <code
class="ph codeph">click</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
revenue per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__37"><code
class="ph codeph">revenue_ecpa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__38">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000040cf__entry__39"><code
class="ph codeph">total_revenue</code> / <code
class="ph codeph">total_convs</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000040cf__entry__40">The
total revenue per conversion.</td>
</tr>
</tbody>
</table>





## Example

**Request the report**

``` pre
$ cat the_request.json
 
{
    "report": {
        "report_type": "targeted_segment_analytics",
        "format": "csv",
        "report_interval": "last_14_days",
        "columns": [
            "day",
            "member_id",
            "campaign",
            "segment",
            "segment_code",
            "media_cost",
            "imps",
            "clicks",
            "revenue_ecpm",
            "ctr",
            "convs_rate"
        ],
        "filters": [
            {
                "campaign_id": "827286"
            }
        ]
    }
}
 
$ curl -bc -cc -X POST -d @the_request.json 'https://api.appnexus.com/report'
 
// Note that the response contains some internal-only debugging info if you request it as an admin user.
 
{
    "response": {
        "status": "OK",
        "report": {
            "name": "",
            "created_on": "2013-11-20 19:29:34",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "did not find any cache table for 1,2,30,31,32,34,36,66,6",
            "json_request": "{"report":{"filters":[{"campaign_id":"827286"},{"member_id":"541"},{"campaign_id":"827286"}],"columns":["day","member_id","campaign","segment","segment_code","media_cost","imps","clicks","revenue_ecpm","ctr","convs_rate"],"report_interval":"last_14_days","format":"csv","report_type":"targeted_segment_analytics"}}",
            "header_info": "",
            "row_count": "",
            "report_size": "",
            "internal_info": "{\"report_id\":\"823418c8d5548559948617332a1b5a23\",\"cache_miss\":1,\"cache_host\":\"vertica\",\"query\":\" SELECT to_char(ymd, 'YYYY-MM-DD') AS alias_1,buyer_member_id AS alias_2,CAMPAIGN_ID AS alias_3,segment_id AS alias_4,segment_id AS alias_5,SUM(MEDIA_COST_DOLLARS) AS alias_6,SUM(IMPS) AS alias_7,SUM(CLICKS) AS alias_8,SUM(booked_revenue_dollars) \/ (CASE WHEN SUM(imps) > 0 THEN  SUM(imps) ELSE 1 END) * 1000 AS alias_9,SUM(clicks)::numeric\/(CASE WHEN SUM(imps) > 0 THEN  SUM(imps)::numeric ELSE 1 END) AS alias_10,SUM(post_click_convs + post_view_convs)::numeric\/(CASE WHEN SUM(imps) > 0 THEN SUM(imps) ELSE 1 END) AS alias_11  FROM view_agg_dw_targeted_segments fact  WHERE 1=1  AND ymd >= '2013-11-06 00:00:00' AND ymd  < '2013-11-20 00:00:00' AND CAMPAIGN_ID IN ('827286') AND buyer_member_id IN ('541')  GROUP BY to_char(ymd, 'YYYY-MM-DD'), alias_2, alias_3, alias_4, alias_5 LIMIT 1000000001\n-- [member_id] 0\n-- [report_id] 823418c8d5548559948617332a1b5a23\"}",
            "user_id": "14311",
            "entity_id": "0",
            "started_on": "2013-11-20 19:29:34",
            "finished_on": "1970-01-01 00:00:01",
            "query_time": ""
        },
        "execution_status": "pending",
        "dbg_info": {
            "instance": "29.bm-hbapi.prod.nym1",m
            "slave_hit": false,
            "db": "master",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 128.81517410278,
            "start_microtime": 1384975794.8973,
            "version": "1.14.46"
        }
    }
}
```






