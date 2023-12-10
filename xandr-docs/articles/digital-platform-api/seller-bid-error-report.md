---
Title : Seller Bid Error Report
Description : The **Seller Bid** **Error Report** helps you gain insight into rejected
ms.date: 10/28/2023
ms.custom: digital-platform-api
demand through a randomly selected set of 5% of the errors logged on the
AppNexus platform. Error Count has been
---


# Seller Bid Error Report





The **Seller Bid** **Error Report** helps you gain insight into rejected
demand through a randomly selected set of 5% of the errors logged on the
AppNexus platform. Error Count has been
multiplied by 100 to account for the 5% sampling.

Use this report to troubleshoot sell-side and buy-side settings that
result in auction errors, thereby blocking spend. The goal is to help
you eliminate the error in the future. You can find information on the
owner, cause and recommended resolution for each error in <a
href="xandr-bidders/bid-error-codes.md"
class="xref" target="_blank">Bid Error Codes</a>.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="seller-bid-error-report.md#seller-bid-error-report__seller-bid-error-report-example"
class="xref">example</a> below.



>

## Time Frame

>

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour
- yesterday
- last_24_hours
- last_2_days
- last_7_days
- last_30_days



To run a report for a custom time frame, set the `start_date` and
`end_date` fields in your report request. For more details about these
fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

**Data Retention Period**

Data retention period for this report is 403 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-bid-error-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-bid-error-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-bid-error-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-bid-error-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-bid-error-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The hour of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">error_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The specific error that
occurred and was logged in ImpBus (ties to Error Message)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">error_message</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">varchar</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">“Creative brand banned by member's ad profile”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">A generic Error Message that
describes the error that occurred (ties to Error ID)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">ad_profile_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">1432</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The Ad Profile ID of the
Seller Member affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"DBM"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The technology provider who
is representing a Buyer Member and is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID associated with the
bidder</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4">"Ace Hardware"</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The brand registered in the
AppNexus system and associated with the creative
that is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the brand
associated with the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The Buyer Member affected by
the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the Buyer
Member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">creative_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">“Beauty”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">A classification assigned to
both brands and creatives affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">creative_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">784</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the creative
category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The Creative ID associated
with the Buyer Member that is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">creative_size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4">"728x90"</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The size of the creative
affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the deal affected
by the error (if Deal ID = 0 no deal was involved).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">language_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"English"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The name of the
language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">language_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the language.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"My placement"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The Placement of the Seller
Member that is associated with the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">7890</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the
placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"Skype"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The Publisher affected by
the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">technical_attribute_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">"Flash"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The feature of the creative,
such as whether it is an image, flash, video, is expandable, etc., that
is affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__1">technical_attribute_ ID</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__4"><code
class="ph codeph">350</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__5">The ID of the Technical
Attribute.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-bid-error-report__entry__126"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-bid-error-report__entry__127"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-bid-error-report__entry__128"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-bid-error-report__entry__129"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="seller-bid-error-report__entry__130"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__126">error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__128">2340</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__129"><code
class="ph codeph">sum(error_count)*100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__130">The amount of errors
logged on the AppNexus platform over the
timeframe selected (a randomly selected set of 5% of the errors
multiplied by 100 to account for the sampling).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__126">blocked_bid_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__127">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__128">5.68</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__129"><code
class="ph codeph">sum(blocked_bid_value) / sum (error_count)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-bid-error-report__entry__130">The bid price of the
blocked bid.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type`
`"seller_bid_error_report"`, as well as the `columns` (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filters for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat seller_bid_error

{
    "report":
    {
        "report_type":"seller_bid_error_report",
        "columns":[
            "hour",
            "bidder",
            "buyer_member",
            "error_count"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```

**POST the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @seller_bid_error 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```





**GET the report status from the Report Service**

``` pre
Make a GET call with the Report ID to retrieve the status of the report. Continue making this GET call until the {{execution_status}} is "ready". Then use the *report-download* service to save the report data to a file, as described in the next step.
```





``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"seller_bid_error_report\",\"columns\":[\"hour\",\"bidder\",
            \"buyer_member\",\"error_count\",
            \"report_interval\":\"last_48_hours\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**GET the report data from the Report Download Service**



To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/advertiser_analytics.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








