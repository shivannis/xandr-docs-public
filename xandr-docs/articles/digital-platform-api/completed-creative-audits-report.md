---
Title : Completed Creative Audits Report
Description : The **Completed Creative Audits Report** is designed to give you insight
ms.date: 10/28/2023
ms.custom: digital-platform-api
into how your creatives are moving through the audit process. Using this
---


# Completed Creative Audits Report





The **Completed Creative Audits Report** is designed to give you insight
into how your creatives are moving through the audit process. Using this
report, you can find out:

- How many of your creatives have been audited over a given time frame
- Which of your creatives have completed audit
- How much your creative audit fees will be

See the <a
href="completed-creative-audits-report.md#completed-creative-audits-report__example"
class="xref">Example</a> below for instructions on retrieving this
report.





<b>Note:</b> For more information about how
reporting works, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Time Frame

The `report_interval` field in the JSON request must be set to one of
the following:

- yesterday
- last_7_days
- month_to_date
- last_month
- last_30_days
- last_14_days

**Data Retention Period**

Data retention period for this report is 365 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="completed-creative-audits-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="completed-creative-audits-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="completed-creative-audits-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="completed-creative-audits-report__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">Day on which audits
were completed (alias for <code
class="ph codeph">audit_completion_date</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">ID of the creative
that was audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">Name of the
creative that was audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">The ID of the
advertiser associated with the creative that was audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">The name of the
advertiser associated with the audited creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">ID of the member
whose creative was audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">audit_reason_id</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4"><p>The integer code
for the type of audit. There are two allowed values:</p>
<ul>
<li><code class="ph codeph">1</code>: Initial audit</li>
<li><code class="ph codeph">2</code>: Reaudit</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">audit_reason</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">The type of audit.
This will be either <code class="ph codeph">"Initial"</code> or <code
class="ph codeph">"Reaudit"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">audit_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4"><p>The integer code
for the priority of the audit. Allowed values:</p>
<ul>
<li><code class="ph codeph">1</code>: Standard</li>
<li><code class="ph codeph">2</code>: Priority</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">audit_type</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4"><p>The priority of
the audit. Allowed values:</p>
<ul>
<li><code class="ph codeph">"standard"</code></li>
<li><code class="ph codeph">"priority"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">The name of the
member whose creative was audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__1">audit_completion_date</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__4">The day on which
the audits were completed.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="completed-creative-audits-report__entry__53"
class="entry colsep-1 rowsep-1">Column</th>
<th id="completed-creative-audits-report__entry__54"
class="entry colsep-1 rowsep-1">Type</th>
<th id="completed-creative-audits-report__entry__55"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__53">num_audits_completed</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__54">int</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__55">The number of
audits completed in the grouping specified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__53">total_audit_fee</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__54">double</td>
<td class="entry colsep-1 rowsep-1"
headers="completed-creative-audits-report__entry__55">The total fees for
audits in the grouping specified.</td>
</tr>
</tbody>
</table>



>

## Example

**Create the JSON report request**



``` pre
$ cat completed_creative_audits.json

{
    "report": {
        "format": "csv",
        "report_interval": "yesterday",
        "filters": [
            {
                "member_id": 88
            }
        ],
        "columns": [
            "day",
            "creative_id",
            "creative_name",
            "advertiser_name",
            "member_id",
            "audit_completion_date",
            "audit_type",
            "num_audits_completed",
            "total_audit_fee",
            "audit_completion_date"
        ],
        "report_type": "completed_creative_audits"
    }
}
```



**`POST` the request data to the Report Service**



``` pre
$ curl -b cookies -X POST -d @completed-creative-audits.json https://api.appnexus.com/report

{
    "response":{
        
         "existing":true,
         "report_id":"c2c682185b62ec9afd019536a8d947cc",
         "status":"OK"
    }
}
```



**`GET` the report status**



``` pre
$ curl -b cookies https://api.appnexus.com/report?id=c2c682185b62ec9afd019536a8d947cc


{
    "response":{
         "execution_status":"ready",
         "status":"OK"
    }
}
```



**`GET` the report data**

``` pre
$ curl -b cookies https://api.appnexus.com/report-download?id=c2c682185b62ec9afd019536a8d947cc > /tmp/completed_creative_audits.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.









## Related Topics

- <a
  href="report-service.md"
  class="xref" target="_blank">Report Service</a>
- <a
  href="saved-report-service.md"
  class="xref" target="_blank">Saved Report Service</a>






