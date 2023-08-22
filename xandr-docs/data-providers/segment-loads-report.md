# Segment Loads Report

<div class="body">

The Segment Loads report allows you to view metrics about your segments,
including the total number of segment pixel loads and the number of
unique user IDs included at specific points in time.

<div class="p">

For instructions on retrieving a report, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the examples below.

<div class="note">

<span class="notetitle">Note:</span> You must select the shared segments
explicitly to report on them.

</div>

</div>

<div class="section">

## Time Frame

<div class="p">

The `report_interval` field in the JSON request can be set to:

- `today`
- `yesterday`
- `last_48_hours`
- `last_7_days`
- `month_to_date`

<div class="note tip">

<span class="tiptitle">Tip:</span> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

</div>

</div>

</div>

<div class="section">

## Dimensions

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d11343e117" class="entry nocellnoborder"
style="vertical-align: top">Column</th>
<th id="d11343e120" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d11343e123" class="entry nocellnoborder"
style="vertical-align: top">Filter?</th>
<th id="d11343e126" class="entry nocellnoborder"
style="vertical-align: top">Example</th>
<th id="d11343e129" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d11343e117 ">segment_id</td>
<td class="entry nocellnoborder"
headers="d11343e120 ">int</td>
<td class="entry nocellnoborder"
headers="d11343e123 ">yes</td>
<td class="entry nocellnoborder"
headers="d11343e126 ">220</td>
<td class="entry cell-noborder"
headers="d11343e129 ">The ID of the segment.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d11343e117 ">segment_name</td>
<td class="entry nocellnoborder"
headers="d11343e120 ">string</td>
<td class="entry nocellnoborder"
headers="d11343e123 ">no</td>
<td class="entry nocellnoborder"
headers="d11343e126 ">"Submitted application"</td>
<td class="entry cell-noborder"
headers="d11343e129 ">The name of the segment.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d11343e117 ">segment</td>
<td class="entry nocellnoborder"
headers="d11343e120 ">string</td>
<td class="entry nocellnoborder"
headers="d11343e123 ">no</td>
<td class="entry nocellnoborder"
headers="d11343e126 ">"Submitted application (220)"</td>
<td class="entry cell-noborder"
headers="d11343e129 "><strong>Deprecated</strong> (as of October 17,
2016).</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d11343e117 ">day</td>
<td class="entry nocellnoborder"
headers="d11343e120 ">time</td>
<td class="entry nocellnoborder"
headers="d11343e123 ">yes</td>
<td class="entry nocellnoborder"
headers="d11343e126 ">2011-01-06</td>
<td class="entry cell-noborder"
headers="d11343e129 ">The day for which you want segment metrics.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d11343e117 ">month</td>
<td class="entry -nocellborder"
headers="d11343e120 ">time</td>
<td class="entry -nocellborder"
headers="d11343e123 ">yes</td>
<td class="entry -nocellborder"
headers="d11343e126 ">2011-01</td>
<td class="entry cellborder"
headers="d11343e129 ">The month for which you want segment metrics.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Metrics

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d11343e253" class="entry nocellnoborder"
style="vertical-align: top">Column</th>
<th id="d11343e256" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d11343e259" class="entry nocellnoborder"
style="vertical-align: top">Example</th>
<th id="d11343e262" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d11343e253 ">total_loads</td>
<td class="entry nocellnoborder"
headers="d11343e256 ">int</td>
<td class="entry nocellnoborder"
headers="d11343e259 ">28375</td>
<td class="entry cell-noborder"
headers="d11343e262 ">The total number of times the segment pixel
loaded.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d11343e253 ">daily_uniques</td>
<td class="entry nocellnoborder"
headers="d11343e256 ">int</td>
<td class="entry nocellnoborder"
headers="d11343e259 ">556</td>
<td class="entry cell-noborder"
headers="d11343e262 ">The number of unique user IDs added to the segment
on a specific day. To view this metric, you must include the day
dimension.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d11343e253 ">monthly_uniques</td>
<td class="entry nocellnoborder"
headers="d11343e256 ">int</td>
<td class="entry nocellnoborder"
headers="d11343e259 ">10998</td>
<td class="entry cell-noborder"
headers="d11343e262 ">The number of unique user IDs added to the segment
in a specific month. To view this metric, you must include the month
dimension.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d11343e253 ">avg_daily_uniques</td>
<td class="entry -nocellborder"
headers="d11343e256 ">int</td>
<td class="entry -nocellborder"
headers="d11343e259 ">675</td>
<td class="entry cellborder"
headers="d11343e262 ">The average number of users added to a segment per
day for a specific month. To view this metric, you must include the
month dimension.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Examples

**Viewing monthly and average daily metrics for all segments**

<div class="p">

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

</div>

<div class="p">

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

</div>

3\. **GET the report status from the Report Service.**

<div class="p">

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

</div>

4\. **GET the report data from the Report Download Service.**

<div class="p">

To download the report data to a file, make another GET call with the
Report ID, but this time to the report-download service. You can find
the service and Report ID in the url field of the previous GET response.
When identifying the file that you want to save to, be sure to use the
file extension of the "format" that you specified in your initial POST.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=07af1282c9485adcef49c95fa5d7496b' > /temp/segement_loads.csv
```

</div>

5\. **Viewing daily metrics for segment 184531**

1\. **Create the JSON request for the report.**

<div class="p">

<div class="note">

<span class="notetitle">Note:</span> To get metrics for a specific
segment, you must filter the report by segment_id.

</div>

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

</div>

2\. **POST the request to the Reporting Service.**

<div class="p">

``` pre
$ curl -b cookies -c cookies -X POST -d @segment_daily 'https://api.appnexus.com/report'
{
    "response":{
        "status":"OK",
        "report_id":"c5975474b00c68f3cd1db49b8fe758da"
    }
}
```

</div>

3\. **GET the report status from the Report Service.**

Make a GET call with the Report ID to retrieve the status of the report.
Continue making this GET call until the execution_status is "ready".
Then use the report-download service to save the report data to a file,
as described in the next step.

<div class="p">

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

</div>

4\. **GET the report data from the Report Download Service.**

To download the report data to a file, make another GET call with the
Report ID, but this time to the report-download service. You can find
the service and Report ID in the url field of the previous GET response.
When identifying the file that you want to save to, be sure to use the
file extension of the "format" that you specified in your initial POST.

<div class="p">

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c5975474b00c68f3cd1db49b8fe758da' > /temp/segment_loads.csv
```

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.

</div>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="reporting-and-tracking.html" class="link">Reporting and
Tracking</a>

</div>

</div>

</div>
