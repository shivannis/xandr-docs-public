---
Title : Forecast Report
Description : The Forecast report can be used to view both buy and sell-side data for
ms.date: 10/28/2023
ms.custom: digital-platform-api
a network member:
- Direct advertiser impressions (bought across direct publishers and
real-time inventory)
- Direct publishers (sold across direct advertisers and other platform
buyers)
For instructions on retrieving a report, see <a
href="report-service.md"
---


# Forecast Report







The Forecast report can be used to view both buy and sell-side data for
a network member:

- Direct advertiser impressions (bought across direct publishers and
  real-time inventory)
- Direct publishers (sold across direct advertisers and other platform
  buyers)



For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the example below.





## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- lifetime

**Data Retention Period**





Data in this report is retained for 33 days.



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="forecast-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="forecast-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="forecast-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="forecast-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="forecast-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The buyer member affected by the
error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The ID of the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"My Network (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The name of the buying member
followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The ID of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"Default Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The name of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"Default Campaign (222)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The name of the campaign followed by
the ID (Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">forecast_id</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">889</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The ID of a forecast object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">bid_bucket_percent</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">66%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The percentage of <code
class="ph codeph">cumulative_imps_available</code> that will win at
<code class="ph codeph">bid_bucket_price</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">bid_bucket_price</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">678.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The price to bid to win <code
class="ph codeph">cumulative_imps_available</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">cumulative_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">650.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The total price to pay if win all
<code class="ph codeph">cumulative_imps_available</code> at that
bucket.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">hours_recorded</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">77</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The number of hours how long
forecast has been run.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">hours_recorded_start_time</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The timestamp that forecast started
to run.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">forecast_name</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"MyForecast"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The name of the forecast.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">cpm_bid</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The bid price of a bid bucket.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">win_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">71%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The percentage of <code
class="ph codeph">cumulative_imps_available</code> will win at <code
class="ph codeph">bid_bucket_price</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">daily_winnable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">655</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The total imps to run within this
bucket, projected to a full day.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">880.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The total price to pay if win all
<code class="ph codeph">daily_winnable_imps</code> at that bucket.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__1">forecast</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__4"><code
class="ph codeph">"MyForecast(11)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__5">The forecast name with id.</td>
</tr>
</tbody>
</table>





## Metric

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="forecast-report__entry__96"
class="entry colsep-1 rowsep-1">Column</th>
<th id="forecast-report__entry__97"
class="entry colsep-1 rowsep-1">Type</th>
<th id="forecast-report__entry__98"
class="entry colsep-1 rowsep-1">Example</th>
<th id="forecast-report__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__96">cumulative_imps_available</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__97">int</td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__98"><code
class="ph codeph">777</code></td>
<td class="entry colsep-1 rowsep-1"
headers="forecast-report__entry__99">The total imps to run within this
bucket.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` of
`"periscope_forecast"`, as well as the `columns` (dimensions) and
`report_interval` that you want to retrieve. You can also filters for
specific dimensions, and specify the `"format"` in which the data should
be returned (`"csv"`, `"excel"`, or `html`). For a full explanation of
fields that can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat periscope_forecast

{
    "report":
    {
        "report_type":"periscope_forecast",
        "columns":[
            "buyer_member",
            "media_cost",
            "win_rate",
            "forecast_name"
            
        ],
        "report_interval":"lifetime",
        "format":"csv"
    }
}
```

**`POST` the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d periscope_forecast 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `{{execution_status}}`
is `"ready"`. Then use the **report-download** service to save the
report data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"periscope_forecast\",\"columns\":[\"lifetime\",\"media_cost\",
            \"buyer_member\",\"media_cost\",
            \"report_interval\":\"lifetime\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the "format" that you specified in your
initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/periscope_forecast.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








