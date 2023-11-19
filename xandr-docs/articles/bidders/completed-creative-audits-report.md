---
Title : Completed Creative Audits Report
Description : The **Completed Creative Audits Report** is designed to give you insight
ms.date : 10/28/2023
into how your creatives are moving through the audit process. Using this
---


# Completed Creative Audits Report



The **Completed Creative Audits Report** is designed to give you insight
into how your creatives are moving through the audit process. Using this
report, you can find out:

- How many of your creatives have been audited over a given time frame
- Which of your creatives have completed audit
- How much your creative audit fees will be

See the <a href="completed-creative-audits-report.md#ID-0000649b__ex"
class="xref">Example</a> below for instructions on retrieving this
report.



<b>Tip:</b> For more information about how
reporting works, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



This report's data is retained for 90 days.



## Time Frame

The `report_interval` field in the JSON request must be set to one of
the following:

- `yesterday`
- `last_7_days`
- `month_to_date`
- `last_month`
- `last_30_days`
- `last_14_days`





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000649b__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000649b__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000649b__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-0000649b__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">Day
on which audits were completed (alias for <code
class="ph codeph">audit_completion_date</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">ID
of the creative that was audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">creative_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">Name
of the creative that was audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">ID
of the member whose creative was audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">audit_reason_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
integer code for the type of audit. There are two allowed values:
<ul>
<li><code class="ph codeph">1</code>: Initial audit</li>
<li><code class="ph codeph">2</code>: Reaudit</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">audit_reason</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
type of audit. This will be either "Initial" or "Reaudit".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">audit_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
integer code for the priority of the audit. Allowed values:
<ul>
<li><code class="ph codeph">1</code>: Standard</li>
<li><code class="ph codeph">2</code>: Priority</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">audit_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
priority of the audit. Allowed values:
<ul>
<li><code class="ph codeph">"standard"</code></li>
<li><code class="ph codeph">"priority"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
name of the member whose creative was audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__1"><code
class="ph codeph">audit_completion_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__4">The
day on which the audits were completed.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000649b__entry__45"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-0000649b__entry__46"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000649b__entry__47"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__45"><code
class="ph codeph">num_audits_completed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__46">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__47">The
number of audits completed in the grouping specified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__45"><code
class="ph codeph">total_audit_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000649b__entry__46">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000649b__entry__47">The
total fees for audits in the grouping specified.</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON report request**

``` pre
$ cat completed-creative-audits.json
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

**POST the request data to the Reporting Service**

``` pre
$ curl -b cookies -X POST -d @completed-creative-audits.json https://api.adnxs.com/report
{
    "response": {
        "existing": false,
        "status": "OK",
        "report_id": "3883b9d919e9361f47aa92e707849058",
        "dbg": {
            ...
        }
    }
}
```

**GET the report data**

``` pre
$ curl -b cookies https://api.adnxs.com/report/c2c682185b62ec9afd019536a8d947cc
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-08-14 16:06:14",
            "header_info": "Report ID:,3883b9d919e9361f47aa92e707849058
Run at:,2014-08-14 16:06:14
Start date:,2014-08-13 00:00:00
End date:,2014-08-14 00:00:00
Timezone:,
User:,Rick Land (14311)
",
            "row_count": "0",
            "report_size": "149",
            "user_id": "14311",
            "entity_id": "0",
            "started_on": "2014-08-14 16:06:16",
            "finished_on": "2014-08-14 16:06:18",
            "query_time": "1",
            "data": "day,creative_id,creative_name,member_id,audit_completion_date,audit_type,num_audits_completed,total_audit_fee,audit_completion_date
",
            "url": "report-download?id=3883b9d919e9361f47aa92e707849058"
        },
        "execution_status": "ready",
        "dbg": {
            ...
        }
    }
    }
```





## Related Topics

- <a href="report-service.md" class="xref">Report Service</a>

- <a href="saved-report-service.md" class="xref">Saved Report
  Service</a>

- <a href="bidder-platform-buyer-report.md" class="xref">Bidder Platform
  Buyer Report</a>

- <a href="bidder-billing-report-api.md" class="xref">Bidder Billing
  Report API</a>

- <a href="platform-seller-report.md" class="xref">Platform Seller
  Report</a>

- <a href="seller-platform-billing-report.md" class="xref">Seller
  Platform Billing Report</a>

- <a href="inventory-availability-reporting.md" class="xref">Inventory
  Availability Reporting</a>

- <a href="reporting-timezones.md" class="xref">Reporting Timezones</a>






