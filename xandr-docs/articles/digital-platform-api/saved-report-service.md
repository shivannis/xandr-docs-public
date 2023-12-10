---
Title : Saved Report Service
Description : The Saved Report service can be used to create new reports which are
ms.date: 10/28/2023
ms.custom: digital-platform-api
saved and can be retrieved at any time. They are useful for reports
---


# Saved Report Service





The Saved Report service can be used to create new reports which are
saved and can be retrieved at any time. They are useful for reports
which are executed frequently. The Saved Report Service acts as a
wrapper around the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



<b>Note:</b> There is a limit of 100K rows per
report.



A few facts to keep in mind about saved reports:

- Saved reports expire after 6 months. You must create a new saved
  report after 6 months.
- Saved reports cannot have a **Lifetime** or **Custom** date range.
- Saved reports are run in the order in which they were originally
  created. For example, if you create two daily reports, the daily
  report created first will run first each day.
- Daily reports are run and sent each day at varying times throughout
  the day.
- Weekly reports are run and sent on the Monday of each week for the
  previous 7 days.
- Monthly reports are run and sent on the first day of each month.





## REST API



<b>Note:</b> Reports saved by other users
within your network (member) will not be returned in these calls. Only
those reports saved by your user account will be returned.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="saved-report-service__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="saved-report-service__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="saved-report-service__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?advertiser_id=ADVERTISER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To view all saved reports for
an advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?publisher_id=PUBLISHER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To view all saved reports for a
publisher</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?id=SAVED_REPORT_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To view a specific saved
report</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?advertiser_id=ADVERTISER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To add a new saved report for
an advertiser</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?publisher_id=PUBLISHER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To add a new saved report for
an publisher</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?advertiser_id=ADVERTISER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To modify an existing saved
report for an advertiser</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?publisher_id=PUBLISHER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To modify an existing saved
report for publisher</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__2">https://api.appnexus.com/saved-report?id=SAVED_REPORT_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__3">To delete an existing saved
report</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="saved-report-service__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="saved-report-service__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="saved-report-service__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The category of the
report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The date and time on which the
saved report was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">emails</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">array</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The list of emails to send the
report. The array should be in the format ["email_address1@<a
href="https://domain.com/" class="xref" target="_blank">domain.com</a>",
"email_address2@<a href="https://domain.com/" class="xref"
target="_blank">domain.com</a>", ...]</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">int</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The entity ID of the user
creating the report. This sets the scope of the report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">expires_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30"><p>The date and time on which
a saved report expires. This is currently limited to one year in the
future. The date/time should be specified in the format "YYYY-MM-DD
HH:MM:SS" where the time is specified in 24-hour format.</p>
<p><strong>Required On</strong>: POST and PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The format in which the report
results will be saved. Possible values: <code
class="ph codeph">"excel" </code>or <code
class="ph codeph">"csv"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">int</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30"><p>The internal ID associated
with the saved report.</p>
<p><strong>Required On</strong>: PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The date and time on which the
saved report was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The name of the report which
is display in the UI. The maximum length is 100 characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">report</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">object</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">Report defined in the same
format as used in the <a
href="report-service.md"
class="xref" target="_blank">Reporting Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__28"><code
class="ph codeph">scheduling</code></td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__29">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="saved-report-service__entry__30">The frequency with which the
report is executed. Possible values: <code
class="ph codeph">"daily"</code>, <code
class="ph codeph">"weekly"</code>, or <code
class="ph codeph">"monthly"</code>.</td>
</tr>
</tbody>
</table>





## Examples

**Adding a new saved report for a publisher**

1.  Construct a report JSON (as described in <a
    href="report-service.md#ReportService-Step1-CreateaJSON-formattedreportrequest"
    class="xref" target="_blank">Report Service - Step1</a>)
2.  `POST` the JSON to the saved-report service
3.  Store the id that is returned

``` pre
$ cat saved-report

{
   "saved-report":{
      "name":"Publisher Report Last 48 Hours",
      "report":{
         "report_type":"publisher_analytics",
         "columns":[
            "publisher_revenue",
            "imps_total",
            "imps_sold",
            "imps_default",
            "clicks",
            "ctr",
            "month",
            "day",
            "hour",
            "geo_country",
            "size",
            "placement",
            "total_convs",
            "convs_rate",
            "publisher_rpm"
         ],
         "row_per":[
            "month",
            "day",
            "hour",
            "geo_country",
            "size",
            "placement_id"
         ],
         "timezone":"EST",
         "report_interval":"last_48_hours"
      },
      "scheduling":"daily",
      "format":"excel",
      "emails":[
         "reporting@publisher.com",
         "noreply@publisher.com"
      ],
      "expires_on":"2010-10-31 0:00:00"
   }
}

$ curl -b cookies -c cookies -X post --data-binary @saved-report 'https://api.appnexus.com/saved-report?publisher_id=35'

{
   "response":{
      "status":"OK",
      "id":39
   }
}
```

**Executing and retrieving a saved report (you must perform this step
every time you wish to retrieve an updated report):**

1.  `POST` to the report service with the id from above, and store the
    returned `report_id`
2.  Check the report's status with a `GET` to the report service with
    the `report_id` (as described in <a
    href="report-service.md#ReportService-Step3-GETthereportstatusfromtheReportService"
    class="xref" target="_blank">Report Service - Step3</a>)
3.  `GET` the report from the `report-download` service (as described in
    <a
    href="report-service.md#ReportService-Step4-GETthereportdatafromtheReportDownloadService"
    class="xref" target="_blank">Report Service - Step4</a>)

``` pre
$ curl -b cookies -c cookies -X post "https://api.appnexus.com/report?saved_report_id=39&publisher_id=35"

{
   "response":{
      "status":"OK",
      "report_id":"fa16873114e1d5697091069e45bccec0"
   }
}

$ curl -b cookies -c cookies "https://api.appnexus.com/report?id=fa16873114e1d5697091069e45bccec0"

{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-06-10 15:53:07",
         "json_request":"{\"report\":{\"report_type\":\"publisher_analytics\",\"columns\":[\"publisher_revenue\",\"imps_total\",
             \"imps_sold\",\"imps_default\",\"clicks\",\"ctr\",\"month\",\"day\",\"hour\",\"geo_country\",\"size\",\"placement\",
             \"total_convs\",\"convs_rate\",\"publisher_rpm\"],\"row_per\":[\"month\",\"day\",\"hour\",\"geo_country\",\"size\",
             \"placement_id\"],\"timezone\":\"EST\",\"report_interval\":\"last_48_hours\",\"filters\":[{\"publisher_id\":\"4642\"},
             {\"publisher_id\":\"4642\"}]}}",
         "data":"publisher_revenue,imps_total,imps_sold,imps_default,clicks,ctr,month,day,hour,geo_country,size,placement,total_convs,convs_rate,publisher_rpm\r\n"
      },
      "execution_status":"ready"
   }
}

 
$ curl -i -b cookies -c cookies 'https://api.appnexus.com/report-download?id=fa16873114e1d5697091069e45bccec0' > /tmp/publisher_analytics.csv
```






