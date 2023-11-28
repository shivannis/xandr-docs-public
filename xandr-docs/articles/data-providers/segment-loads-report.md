---
Title : Segment Loads Report
Description : The Segment Loads report allows you to view metrics about your segments,
ms.custom : data-providers
ms.date : 10/28/2023
including the total number of segment pixel loads and the number of
unique user IDs included at specific points in time.
---


# Segment Loads Report



The Segment Loads report allows you to view metrics about your segments,
including the total number of segment pixel loads and the number of
unique user IDs included at specific points in time.



For instructions on retrieving a report, see <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a> or the examples below.



<b>Note:</b> You must select the shared
segments explicitly to report on them.







## Time Frame



The `report_interval` field in the JSON request can be set to:

- `today`
- `yesterday`
- `last_48_hours`
- `last_7_days`
- `month_to_date`



<b>Tip:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000016d6__entry__1" class="entry">Column</th>
<th id="ID-000016d6__entry__2" class="entry">Type</th>
<th id="ID-000016d6__entry__3" class="entry">Filter?</th>
<th id="ID-000016d6__entry__4" class="entry">Example</th>
<th id="ID-000016d6__entry__5" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000016d6__entry__1">segment_id</td>
<td class="entry" headers="ID-000016d6__entry__2">int</td>
<td class="entry" headers="ID-000016d6__entry__3">yes</td>
<td class="entry" headers="ID-000016d6__entry__4">220</td>
<td class="entry" headers="ID-000016d6__entry__5">The ID of the
segment.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000016d6__entry__1">segment_name</td>
<td class="entry" headers="ID-000016d6__entry__2">string</td>
<td class="entry" headers="ID-000016d6__entry__3">no</td>
<td class="entry" headers="ID-000016d6__entry__4">"Submitted
application"</td>
<td class="entry" headers="ID-000016d6__entry__5">The name of the
segment.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000016d6__entry__1">segment</td>
<td class="entry" headers="ID-000016d6__entry__2">string</td>
<td class="entry" headers="ID-000016d6__entry__3">no</td>
<td class="entry" headers="ID-000016d6__entry__4">"Submitted application
(220)"</td>
<td class="entry"
headers="ID-000016d6__entry__5"><strong>Deprecated</strong> (as of
October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000016d6__entry__1">day</td>
<td class="entry" headers="ID-000016d6__entry__2">time</td>
<td class="entry" headers="ID-000016d6__entry__3">yes</td>
<td class="entry" headers="ID-000016d6__entry__4">2011-01-06</td>
<td class="entry" headers="ID-000016d6__entry__5">The day for which you
want segment metrics.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000016d6__entry__1">month</td>
<td class="entry" headers="ID-000016d6__entry__2">time</td>
<td class="entry" headers="ID-000016d6__entry__3">yes</td>
<td class="entry" headers="ID-000016d6__entry__4">2011-01</td>
<td class="entry" headers="ID-000016d6__entry__5">The month for which
you want segment metrics.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000016d6__entry__31" class="entry">Column</th>
<th id="ID-000016d6__entry__32" class="entry">Type</th>
<th id="ID-000016d6__entry__33" class="entry">Example</th>
<th id="ID-000016d6__entry__34" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000016d6__entry__31">total_loads</td>
<td class="entry" headers="ID-000016d6__entry__32">int</td>
<td class="entry" headers="ID-000016d6__entry__33">28375</td>
<td class="entry" headers="ID-000016d6__entry__34">The total number of
times the segment pixel loaded.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000016d6__entry__31">daily_uniques</td>
<td class="entry" headers="ID-000016d6__entry__32">int</td>
<td class="entry" headers="ID-000016d6__entry__33">556</td>
<td class="entry" headers="ID-000016d6__entry__34">The number of unique
user IDs added to the segment on a specific day. To view this metric,
you must include the day dimension.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000016d6__entry__31">monthly_uniques</td>
<td class="entry" headers="ID-000016d6__entry__32">int</td>
<td class="entry" headers="ID-000016d6__entry__33">10998</td>
<td class="entry" headers="ID-000016d6__entry__34">The number of unique
user IDs added to the segment in a specific month. To view this metric,
you must include the month dimension.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000016d6__entry__31">avg_daily_uniques</td>
<td class="entry" headers="ID-000016d6__entry__32">int</td>
<td class="entry" headers="ID-000016d6__entry__33">675</td>
<td class="entry" headers="ID-000016d6__entry__34">The average number of
users added to a segment per day for a specific month. To view this
metric, you must include the month dimension.</td>
</tr>
</tbody>
</table>





## Examples

**Viewing monthly and average daily metrics for all segments**



1\. **Create the JSON request for the report.**

``` pre
$ cat segments_monthly
{
    "report":
    {
        "report_type": "segment_load",
        "columns": [
            "segment_id",
            "segment_name",
            "month",
            "total_loads",
            "monthly_uniques",
            "avg_daily_uniques"
        ],
        "groups": [
            "segment_id",
            "month"
        ],
        "orders": [
            "month"
        ],
        "emails": ["js@email.com"],
        "format": "csv"
    }
}
```





2\. **POST the request to the Report Service.**

``` pre
$ curl -b cookies -c cookies -X POST -d @segments_monthly 'https://api.appnexus.com/report'
{
    "response":{
        "status":"OK",
        "report_id":"07af1282c9485adcef49c95fa5d7496b"
    }
}
```



3\. **GET the report status from the Report Service.**



Make a GET call with the Report ID to retrieve the status of the report.
Continue making this GET call until the execution_status is "ready".
Then use the report-download service to save the report data to a file,
as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=07af1282c9485adcef49c95fa5d7496b'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-02-10 16:41:39",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": null,
            "json_request": "{\"report\":{\"report_type\":\"segment_load\",\"columns\":
             [\"segment_id\",\"segment_name\",\"month\",\"total_loads\",\"monthly_uniques\",
             \"avg_daily_uniques\"],\"groups\":[\"segment_id\",\"month\"],\"orders\":
             [\"month\"],\"emails\":[\"js@email.com\"],\"row_per\":[\"segment_id\",
             \"month\"]}}",
            "header_info": "Report type:,segment_load\u000d\u000a,\u000d\u000aRun at:,
             2012-02-10 16:41:39\u000d\u000aStart date:,\u000d\u000aEnd date:,\u000d\u000aTimezone:,
             \u000d\u000aUser:,John Smith (10055)\u000d\u000a",
            "url": "report-download?id=07af1282c9485adcef49c95fa5d7496b"
        },
        "execution_status": "ready"
    }
}
```



4\. **GET the report data from the Report Download Service.**



To download the report data to a file, make another GET call with the
Report ID, but this time to the report-download service. You can find
the service and Report ID in the url field of the previous GET response.
When identifying the file that you want to save to, be sure to use the
file extension of the "format" that you specified in your initial POST.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=07af1282c9485adcef49c95fa5d7496b' > /temp/segement_loads.csv
```



5\. **Viewing daily metrics for segment 184531**

1\. **Create the JSON request for the report.**





<b>Note:</b> To get metrics for a specific
segment, you must filter the report by segment_id.



``` pre
$ cat segment_daily
{
    "report":
    {
        "report_type": "segment_load",
        "columns": [
            "segment_id",
            "segment_name",
            "day",
            "total_loads",
            "daily_uniques"
        ],
        "filters": [
            {
                "segment_id": 184531
            }
        ],
        "groups": [
            "segment_id",
            "day"
        ],
        "orders": [
            "day"
        ],
        "emails": ["js@email.com"],
        "format": "csv"
    }
}
```



2\. **POST the request to the Reporting Service.**



``` pre
$ curl -b cookies -c cookies -X POST -d @segment_daily 'https://api.appnexus.com/report'
{
    "response":{
        "status":"OK",
        "report_id":"c5975474b00c68f3cd1db49b8fe758da"
    }
}
```



3\. **GET the report status from the Report Service.**

Make a GET call with the Report ID to retrieve the status of the report.
Continue making this GET call until the execution_status is "ready".
Then use the report-download service to save the report data to a file,
as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=c5975474b00c68f3cd1db49b8fe758da'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-02-10 15:52:16",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": null,
            "json_request": "{\"report\":{\"report_type\":\"segment_load\",\"columns\":
             [\"segment_id\",\"segment_name\",\"day\",\"total_loads\",\"daily_uniques\"],
             \"filters\":[{\"segment_id\":184531}],\"groups\":[\"segment_id\",\"day\"],
             \"orders\":[\"day\"],\"emails\":[\"js@email.com\"],\"row_per\":
             [\"segment_id\",\"day\"]}}",
            "header_info": "Report type:,segment_load\u000d\u000a,\u000d\u000aRun at:,
             2012-02-10 15:52:16\u000d\u000aStart date:,\u000d\u000aEnd date:,
             \u000d\u000aTimezone:,\u000d\u000aUser:,John Smith (10356)\u000d\u000a",
            "url": "report-download?id=c5975474b00c68f3cd1db49b8fe758da"
        },
        "execution_status": "ready"
    }
}
```



4\. **GET the report data from the Report Download Service.**

To download the report data to a file, make another GET call with the
Report ID, but this time to the report-download service. You can find
the service and Report ID in the url field of the previous GET response.
When identifying the file that you want to save to, be sure to use the
file extension of the "format" that you specified in your initial POST.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c5975474b00c68f3cd1db49b8fe758da' > /temp/segment_loads.csv
```







<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










