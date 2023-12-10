---
Title : Conversion Pixel Last Fire
Description : The Conversion Pixel Fire report allows you to view the date and time
ms.date: 10/28/2023
ms.custom: digital-platform-api
when your advertisers' conversion pixels last fired. You can use this
---


# Conversion Pixel Last Fire





The Conversion Pixel Fire report allows you to view the date and time
when your advertisers' conversion pixels last fired. You can use this
information both to verify the pixels that are firing properly and to
identify the pixels in need of troubleshooting.

For each conversion pixel, the last fire should correspond to the last
time a user visited the web page on which the pixel is placed. If a
pixel has never fired, or last fired a long time ago, it is a sign that
the pixel may not be placed correctly on the page.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="conversion-pixel-last-fire.md#conversion-pixel-last-fire__example"
class="xref">example</a> below.



<b>Note:</b> A conversion pixel fire does not
necessarily mean that there was a conversion attributed to one of your
campaigns. Therefore, you may see that a conversion pixel is firing even
if the associated line items do not show any revenue from conversions.
To get data on attributed conversions, rather than just conversion pixel
fires, use the <a
href="advertiser-attributed-conversions.md"
class="xref" target="_blank">Advertiser Attributed Conversions</a>
report.







## Time Frame

This report retrieves data for the entire lifetime of a pixel but only
in UTC timezone. The `report_interval` field in the JSON request can be
set only to `lifetime`, but this is not necessary, as the interval
defaults to `lifetime` if not specified. Likewise, the `timezone` field
in the JSON request can be set only to `UTC`, but this is not necessary,
as the timezone defaults to `UTC` if not specified.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="conversion-pixel-last-fire__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="conversion-pixel-last-fire__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="conversion-pixel-last-fire__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="conversion-pixel-last-fire__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="conversion-pixel-last-fire__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5">The ID of the conversion
pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5">The ID of the advertiser
that owns the pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">Advertiser 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5">The name of the
advertiser that owns the pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">Advertiser 1 (234)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5">The ID of the buying
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">Member Name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5">The name of the buying
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__4"><code
class="ph codeph">Member Name (567)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="conversion-pixel-last-fire__entry__41"
class="entry colsep-1 rowsep-1">Column</th>
<th id="conversion-pixel-last-fire__entry__42"
class="entry colsep-1 rowsep-1">Type</th>
<th id="conversion-pixel-last-fire__entry__43"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="conversion-pixel-last-fire__entry__44"
class="entry colsep-1 rowsep-1">Example</th>
<th id="conversion-pixel-last-fire__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__41">last_fired</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__42">time</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__43">no</td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__44"><code
class="ph codeph">2023-01-27 18:58:49</code></td>
<td class="entry colsep-1 rowsep-1"
headers="conversion-pixel-last-fire__entry__45">The date on which the
conversion pixel last fired. If the pixel has never fired, this will be
1900-01-01 00:00:00.</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON-formatted report request**



``` pre
$ cat pixel_fired
  {
    "report": {
        "report_type": "pixel_fired",
        "columns": [
            "pixel_id",
            "last_fired",
            "advertiser_id",
            "buyer_member_id"
        ],
        "report_interval": "lifetime",
        "emails": ["js@email.com"],
        "format": "csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @pixel_fired_report 'https://api.appnexus.com/report?advertiser_id=123'

{
    "response":{
        "status":"OK",
        "report_id":"07af1282c9485adcef49c95fa5d7496b"
    }
}
```



**`GET` the report status from the Report Service**

You make a `GET` call with the Report ID to retrieve the status of the
report. You continue making this `GET` call until the `execution_status`
is `"ready"`. Then you use the **report-download** service to save the
report data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=07af1282c9485adcef49c95fa5d7496b'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-01-27 19:47:51",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "did not find any cache table for 2,59",
            "json_request": "{\"report\":{\"report_type\":\"pixel_fired\",\"columns\":[\"pixel_id\",
             \"last_fired\",\"advertiser_id\",\"buyer_member_id\"],\"report_interval\":\"lifetime\",\"emails\":
             [\"js@email.com\"],\"filters\":[{\"buyer_member_id\":\"319\"}]}}",
            "header_info": "Report type:,pixel_fired\u000d\u000a,\u000d\u000aRun at:,2012-01-27 19:47:51\
             u000d\u000aStart date:,\u000d\u000aEnd date:,\u000d\u000aTimezone:,\u000d\u000aUser:,
             Sample User (2562)\u000d\u000a",
            "url": "report-download?id=677556dvds34013ff1108f159d7f39b"
        },
        "execution_status": "ready"
    }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, you make another `GET` call with
the Report ID, but this time to the **report-download** service. When
identifying the file that you want to save to, be sure to use the file
extension of the `"format"` that you specified in your initial `POST`.



<b>Note:</b> For added convenience, the url
field in the previous `GET` response provides you the service and ID to
use in this call.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=677556dvds34013ff1108f159d7f39b' > /tmp/pixel_fire.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










