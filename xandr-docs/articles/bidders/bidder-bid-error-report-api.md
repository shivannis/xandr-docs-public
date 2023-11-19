---
Title : Bidder Bid Error Report API
Description : The Bidder Bid Error Report helps you gain insight into your rejected
ms.date : 10/28/2023
demand through a randomly selected set of 1% of the errors logged on the
Xandr platform. Error Count has been multiplied
---


# Bidder Bid Error Report API



The Bidder Bid Error Report helps you gain insight into your rejected
demand through a randomly selected set of 1% of the errors logged on the
Xandr platform. Error Count has been multiplied
by 100 to account for the 1% sampling.

Use this report to troubleshoot buy-side and sell-side settings that
result in auction errors, thereby blocking spend.  The goal is to help
you eliminate the error in the future. You can find information on the
owner, cause and recommended resolution for each error in <a
href="bid-error-codes.md"
class="xref" target="_blank">Bid Error Codes</a>. 

For instructions on retrieving a report, see <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a> or the example below.



## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:  

- `last_hour`
- `last_24_hours`
- `yesterday`
- `last_2_days`
- `last_7_days`
- `last_30_days` 

To run a report for a custom time frame, set
the `start_date` and `end_date` fields in your report request. For more
details about these fields, see <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a>.





## Dimensions 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005a75__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00005a75__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005a75__entry__3"
class="entry colsep-1 rowsep-1">Group?</th>
<th id="ID-00005a75__entry__4"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-00005a75__entry__5"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00005a75__entry__6"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"2010-02-01 06:00:00"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
hour of the auction.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"2010-02-01"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">error_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">101</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
specific error that occurred and was logged in ImpBus (ties to Error
Message)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">error_message</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">varchar</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">“Creative brand banned by member's ad
profile”</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">A
generic Error Message that describes the error that occurred (ties to
Error ID)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">1432</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Ad Profile ID of the Seller Member impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">brand_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__5">"Ace
Hardware"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
brand registered in the Xandr system and
associated with the creative that is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">3</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the brand associated with the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__5">"My
Network"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Buyer Member who is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">123</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the Buyer Member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">creative_category_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">“Beauty”</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">A
classification assigned to both brands and creatives impacted by the
error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">creative_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">784</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the creative category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">creative_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">485</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Creative Code (internal creative ID) associated with the Creative that
is impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">554</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Creative ID associated with the Buyer Member that is impacted by the
error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">creative_size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"728x90"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
size of the creative impacted by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">deal_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">2345</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the deal impacted by the error (if Deal ID = 0 no deal was
involved).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">language_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"English"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
name of the language.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">language_id</code><br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">1</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">321</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">seller_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"NYTimes"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Seller Member who is impacted by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">123</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the Seller Member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">technical_attribute_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">“Flash”</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__6">Feature of the creative such as whether
it is an image, flash, video, is expandable, etc. impacted by the
error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">technical_attribute_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">350</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
ID of the Technical Attribute.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">buyer_seat_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"123abc"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__1"><code
class="ph codeph">buyer_seat_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__5">"123abc (dsp name)"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005a75__entry__6">The
display name for the buyer seat code</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005a75__entry__151"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00005a75__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005a75__entry__153"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00005a75__entry__154"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00005a75__entry__155"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__151"><code
class="ph codeph">error_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__153">2340</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__154">sum(error_count)*100<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005a75__entry__155">The amount of errors logged on the
Xandr platform over the timeframe selected (a
randomly selected set of 1% of the errors multiplied by 100 to account
for the sampling).</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include
the `report_type` "bidder_bid_error_report", as well as
the `columns` (dimensions and metrics) and `report_interval` that you
want to retrieve. You can also filters for specific dimensions, define
granularity (year, month, day), and specify the format in which the data
should be returned (csv, excel, or html). For a full explanation of
fields that can be included in the JSON file, see the <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat bidder_bid_error
{
        "report":
        {
                "report_type":"bidder_bid_error_report",
                "columns":[
                        "hour",
                        "seller_member_name",
                        "error_count"
                ],
                "report_interval":"last_24_hours",
                "format":"csv"
        }
}
```

**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @bidder_bid_error 'https://api.adnxs.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```

**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the {{execution_status}}
is "ready". Then use the \*report-download\* service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"bidder_bid_error_report\",\"columns\":[\"hour\",
            \"seller_member\",\"error_count\",
            \"report_interval\":\"last_48_hours\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**GET the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the \*report-download\* service. You can
find the service and Report ID in the {{url}} field of the previous
`GET` response. When identifying the file that you want to save to, be
sure to use the file extension of the "format" that you specified in
your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use \\i or \\v in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/bidder_bid_error.csv
```






