---
Title : Admin Custom Report
Description : Xandr admins can use this report to run custom
ms.date: 10/28/2023
ms.custom: digital-platform-api
queries against the internal Reporting cluster. Please use with caution,
---


# Admin Custom Report



Xandr admins can use this report to run custom
queries against the internal Reporting cluster. Please use with caution,
i.e., avoid running heavy queries.



## REST API



<table id="ID-0000089c__table_tp1_2cj_pwb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 27%" />
<col style="width: 39%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000089c__table_tp1_2cj_pwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-0000089c__table_tp1_2cj_pwb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000089c__table_tp1_2cj_pwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__table_tp1_2cj_pwb__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__table_tp1_2cj_pwb__entry__2"><a
href="https://api..com/report" class="xref"
target="_blank">https://api..com/report</a><br />
&#10;<p>(report JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__table_tp1_2cj_pwb__entry__3">Retrieve the
report</td>
</tr>
</tbody>
</table>





<b>Note:</b> See the example below for the
complete procedure.







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000089c__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000089c__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000089c__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__7"><code
class="ph codeph">report_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__8">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000089c__entry__9">The
type of report. Possible value: "admin_backdoor".
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__7"><code class="ph codeph">sql</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__8">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000089c__entry__9">The
sql query. Please specify a where clause / date range as filter, only
select needed fields, etc. See the example below.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__7"><code
class="ph codeph">hostname</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000089c__entry__8">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000089c__entry__9">The
name of the database. Possible value: "vt_jayz_internal" (Vertica Jayz).
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>





## Example

1.  **Create the JSON-formatted report request**

    ``` pre
    $ cat admin_custom_report
                   {
                   "report": {
                   "report_type": "admin_backdoor",
                   "sql": "select * from agg_dw_intermediate_analytics_adjusted where ymdh >= '2011-10-20 09:04:00' limit 5",
                   "hostname": "vt_jayz_internal"
                   }
                   }
    ```

2.  **POST the request to the Reporting Service**

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @admin_custom_report 'https://api..com/report'
                   {
                   "response": {
                   "status": "OK",
                   "report_id": "f83b50a62b9c2ba2b204ab073b4b8efb",
                   "dbg_info": {
                   "instance": "16.hbapi.prod.nym1",
                   "slave_hit": false,
                   "db": "master",
                   "reads": 0,
                   "read_limit": 100,
                   "read_limit_seconds": 60,
                   "writes": 2,
                   "write_limit": 60,
                   "write_limit_seconds": 60,
                   "time": 331.21299743652,
                   "start_microtime": 1323192961.6681,
                   "version": "1.10.28.2",
                   "master_instance": "01.hbapi.sand-08.lax1",
                   "proxy": true,
                   "master_time": 128.6518573761
                   }
                   }
                   }
    ```

3.  **Use the Report ID to retrieve the report data**

    The standard response includes the report data and a Download URL
    that you can us to save the data to a file. If you want to get just
    the Download URL without the report data, pass "without_data" in the
    query string.

    ``` pre
    $ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=f83b50a62b9c2ba2b204ab073b4b8efb'
                   {
                   "response": {
                   "status": "OK",
                   "report": {
                   "name": null,
                   "created_on": "2011-12-06 20:50:17",
                   "cache_hit": false,
                   "fact_cache_hit": false,
                   "fact_cache_error": "empty used fields",
                   "json_request": "{\"report\":{\"report_type\":\"admin_backdoor\",\"sql\":\"select * from
                   agg_dw_intermediate_analytics_adjusted where ymdh >= '2011-10-20 09:04:00' limit 5\",
                   \"hostname\":\"vt_jayz_internal\"}}",
                   "header_info": "Report type:,admin_backdoor\u000d\u000a,\u000d\u000aRun at:,2011-12-06 20:50:17
                   \u000d\u000aStart date:,\u000d\u000aEnd date:,\u000d\u000aTimezone:,\u000d\u000aUser:,
                   John Smith (9685)\u000d\u000a",
                   "data": "/mnt/isilon/reports/20111206/a4a937b4-6151-4678-ac65-0ab1f3790ae3",
                   "url": "report-download?id=f83b50a62b9c2ba2b204ab073b4b8efb"
                   },
                   "execution_status": "ready",
                   "dbg_info": {
                   "instance": "16.hbapi.prod.nym1",
                   "slave_hit": false,
                   "db": "master",
                   "reads": 1,
                   "read_limit": 100,
                   "read_limit_seconds": 60,
                   "writes": 0,
                   "write_limit": 60,
                   "write_limit_seconds": 60,
                   "time": 95.331907272339,
                   "start_microtime": 1323205122.5099,
                   "version": "1.10.27"
                   }
                   }
                   }
    ```

4.  **Use the Download URL to save the report data to a file**

    You use the "url" field in the response to save the report data to a
    file. Simply make another `GET` call and identify the location and
    file that you want to save to. Be sure to use the file the extension
    of the "format" that you specified in your initial `POST` request.

    ``` pre
    $ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=495d03a7667bac467bb488043ae336e9' > /tmp/admin_report.csv
    ```






