---
Title : Report Service
Description : The Report Service offers reporting data of interest to both buyers and
ms.date : 10/28/2023
sellers. It's used to answer questions such as:
---


# Report Service



The Report Service offers reporting data of interest to both buyers and
sellers. It's used to answer questions such as:

- How much money was spent?
- How many impressions were seen?
- How many impressions were sold?
- How much revenue was earned?

This is a **read-only** service. Although you will `POST` a
JSON-formatted report request, this will not alter any data in the Imp
Bus cache. You must be authenticated as a `"bidder"` user type to run
reports. Each report type provides its own metrics, filtering, and
grouping options.



<b>Tip:</b>

Need more than 90 days of data?

The `platform_buyer` and `platform_seller` report types pull from tables
that store the last 90 days worth of data. For older data, please use
the `bidder_pricing_report` and `seller_invoice_report` report types.

The Report Service runs reports asynchronously, which means it can run
several processes in parallel. When you make a report request, you will
either receive the report, an error message, or a pending message. For
more information, see
<a href="report-service.md#ID-00005824__1" class="xref">How to
Retrieve a Report</a> below.

There is also a graphical user interface (UI) to view this reporting
data at <a href="https://bidder.adnxs.net/" class="xref"
target="_blank">https://bidder.xandr.com/</a>. If you do not have access
to this UI, contact your Xandr representative.





<b>Note:</b>  does not
expose all functionality that is available via the API. It only exposes
the `platform_buyer` analytics report. If you need a different report,
you must use the API.





## Report Types

The primary report types are:

- <a
  href="bidder-platform-buyer-report.md"
  class="xref" target="_blank">Bidder Platform Buyer Report</a>
- <a
  href="platform-seller-report.md"
  class="xref" target="_blank">Platform Seller Report</a>
- <a
  href="bidder-billing-report-api.md"
  class="xref" target="_blank">Bidder Billing Report API</a>
- <a
  href="seller-platform-billing-report.md"
  class="xref" target="_blank">Seller Platform Billing Report</a>
- <a
  href="completed-creative-audits-report.md"
  class="xref" target="_blank">Completed Creative Audits Report</a>
- <a
  href="bidder-bid-error-report-api.md"
  class="xref" target="_blank">Bidder Bid Error Report API</a>




## REST API for Viewing Metadata

There are two layers of data in the Report Service: metadata and actual
data. Metadata is a list of available reporting parameters.

To run a custom report you will need a JSON-formatted request. You can
request data by a filter, group, or column. A filter will filter out
results. A having, such as `day`, will filter based on aggregated data.
You can also search by individual parameters, such as `imps_sold`.

<table id="ID-00005824__table_bpz_klh_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005824__table_bpz_klh_nwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-00005824__table_bpz_klh_nwb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005824__table_bpz_klh_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__2"><a
href="https://api.adnxs.com/report?meta=buyer_platform_billing"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/report?meta=buyer_platform_billing</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__3">Return metadata for
<code class="ph codeph">bidder_pricing_report</code> type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__2"><a
href="https://api.adnxs.com/report/meta/platform_buyer" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/report/meta/platform_buyer</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__3">Return metadata for
<code class="ph codeph">platform_buyer</code> type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__2"><a
href="https://api.adnxs.com/report/meta/seller_platform_billing"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/report/meta/seller_platform_billing</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__3">Return metadata for
<code class="ph codeph">seller_invoice_report</code> type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__2"><a
href="https://api.adnxs.com/report/meta/platform_seller" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/report/meta/platform_seller</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__table_bpz_klh_nwb__entry__3">Return metadata for
<code class="ph codeph">platform_seller</code> type.</td>
</tr>
</tbody>
</table>


<b>Note:</b> You can also use a more standard
query format to return metadata:

``` pre
report?meta=report_type
```

For example:

``` pre
GET https://api.adnxs.com/report?meta=platform_buyer
```



  
Metadata comes in the following format:

``` pre
{"column":"day","type":"time"}
{"column":"month","type":"time"}
{"column":"geo_country","type":"string"}
```




## Metadata Example

click here to expand

``` pre
$ curl "https://api.adnxs.com/report/meta/platform_buyer"
  "response": {
    "status": "OK",
 "meta": {
      "columns": [
        {
          "column": "month",
          "type": "time"
        },
        {
          "column": "day",
          "type": "date"
        },
        {
          "column": "hour",
          "type": "date"
        },
      ...
      ],
      "filters": [
        {
          "column": "hour",
          "type": "date"
        },
        {
          "column": "day",
          "type": "date"
        },
        {
          "column": "year",
          "type": "date"
        },
        ...
      ],
      "havings": [
        {
          "column": "clicks"
        },
        {
          "column": "buyer_spend"
        },
        {
          "column": "imps_bought"
        },
        {
          "column": "buyer_ecpm"
        },
        {
          "column": "click_rate_sold"
        }
      ],
      "time_intervals": [
        "current_hour",
        "last_hour",
        "last_48_hours",
        "today",
        "yesterday",
        "last_7_days",
        "month_to_date",
        "quarter_to_date",
        "last_month",
        "lifetime",
        "mtd"
      ]
    }
}
```





## REST API for Data Retrieval

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005824__entry__16" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00005824__entry__17"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005824__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__16">POST </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005824__entry__17"><a
href="https://api.adnxs.com/report?member_id=MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/report?member_id=MEMBER_ID</a> 
<p>(report JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__18">Request a report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__16">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005824__entry__17"><a
href="https://api.adnxs.com/report/REPORT_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/report/REPORT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__18">Request the status of a report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__16">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005824__entry__17"><a
href="https://api.adnxs.com/report-download/REPORT_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/report-download/REPORT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__18">Retrieve report data.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005824__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005824__entry__29"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-00005824__entry__30"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005824__entry__31"
class="entry align-justify colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">report_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">enum</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">Must be one of:
<ul>
<li><code class="ph codeph">"platform_buyer"</code></li>
<li><code class="ph codeph">"platform_seller"</code></li>
<li><code class="ph codeph">"bidder_pricing_report"</code></li>
<li><code class="ph codeph">"seller_invoice_report"</code></li>
<li><code class="ph codeph">"completed_creative_audits"</code></li>
<li><code class="ph codeph">"bidder_bid_error_report"</code></li>
</ul>
<p>This determines which information will be returned.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">filters</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">array</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">List of filters to apply to the report.
See the documentation for each individual report to see which fields can
be filtered on. For a simple example, see the <a
href="report-service.md#ReportService-HowtoRetrieveaReport"
class="xref" target="_blank">How to Retrieve a Report</a> below.

<b>Note:</b> The <code
class="ph codeph">is_delivered</code> filter value is only <code
class="ph codeph">true</code> if the impression was served successfully.
Otherwise, it's <code class="ph codeph">false</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">columns</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005824__entry__29">yes
(at least one)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">array</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">List of columns to include in the
report. See the documentation for each individual report to learn which
columns are available. For a simple example, see the <a
href="report-service.md#ReportService-HowtoRetrieveaReport"
class="xref" target="_blank">How to Retrieve a Report</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">row_per</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">array</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">List of groupings to include in the
report. See the documentation for each individual report to learn which
columns can be used to group by. For a simple example, see the <a
href="report-service.md#ReportService-HowtoRetrieveaReport"
class="xref" target="_blank">How to Retrieve a Report</a>below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">string</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">The ending date for the report.
<ul>
<li>For report types that offer hourly data, this must be formatted as
<code class="ph codeph">"YYYY-MM-DD HH:MM:SS"</code>. However, <code
class="ph codeph">MM:SS</code> must be <code
class="ph codeph">00:00</code>, as data is not available for minutes and
seconds.</li>
<li>For report types that do not offer hourly data, this must be
formatted as <code class="ph codeph">"YYYY-MM-DD"</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">string</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">The ending date for the report.
<ul>
<li>For report types that offer hourly data, this must be formatted as
<code class="ph codeph">"YYYY-MM-DD HH:MM:SS"</code>. However, <code
class="ph codeph">MM:SS</code> must be <code
class="ph codeph">00:00</code>, as data is not available for minutes and
seconds.</li>
<li>For report types that do not offer hourly data, this must be
formatted as <code class="ph codeph">"YYYY-MM-DD"</code>.</li>
</ul>

<b>Note:</b> The <code
class="ph codeph">end_date</code> is non-inclusive. For example, if you
start a monthly report on <code class="ph codeph">"2012-07-01"</code>
and end the report on <code class="ph codeph">"2012-07-31"</code>, your
report will not include data from the last day of the month. The correct
way to retrieve this data would be to end the report on <code
class="ph codeph">"2012-08-01"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">report_interval</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">enum</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">The time range for the report. Not all
reports accept all intervals; see each report's documentation and
metadata for details. Possible values:
<ul>
<li><code class="ph codeph">current_hour</code></li>
<li><code class="ph codeph">last_hour</code></li>
<li><code class="ph codeph">today</code></li>
<li><code class="ph codeph">yesterday</code></li>
<li><code class="ph codeph">last_48_hours</code></li>
<li><code class="ph codeph">last_7_days</code></li>
<li><code class="ph codeph">lifetime</code></li>
<li><code class="ph codeph">month_to_date</code></li>
<li><code class="ph codeph">mtd</code></li>
<li><code class="ph codeph">last_month</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">string</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">The timezone in which the data will be
reported. For a list of possible timezone values, see <a
href="reporting-timezones.md"
class="xref" target="_blank">Reporting Timezones.</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__28"><code
class="ph codeph">escape_fields</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__29">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005824__entry__30">boolean</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="ID-00005824__entry__31">When <code
class="ph codeph">true</code>, it adds quotes around each field in the
report output to allow for safer import into Excel. This only applies to
CSV and tab-delimited reports.</td>
</tr>
</tbody>
</table>




## How to Retrieve a Report

- <a href="report-service.md#ID-00005824__2" class="xref">Step 1. Create
  a JSON-formatted report request</a>
- <a href="report-service.md#ID-00005824__4" class="xref">Step 2. POST
  the request to the Report Service</a>
- <a href="report-service.md#ID-00005824__6" class="xref">Step 3. GET
  the report status from the Report Service</a>
- <a href="report-service.md#ID-00005824__7" class="xref">Step 4. GET
  the report data from the Report Download Service</a>

**Step 1. Create a JSON-formatted report request**

The JSON file should include the specific `report_type` that you want to
run, as well as the `columns` (dimensions and metrics) and
`report_interval` (`"today"`, `"yesterday"`, `"month_to_date"`, etc.)
that you want to retrieve. You can also include `filters` for dimensions
and define granularity (year, month, day) and specify the `format` in
which the data should be returned. The `format` options are:

- `"csv"` - Comma-separated file
- `"xls"` - Tab-separated M.S. Excel file
- `"xlsx"` - Native M.S. Excel format



<b>Note:</b> To filter a dimension by more
than one value, use an array. For example:

Correct:

``` pre
"filters": [{"bid_type": ["learn","optimized"]}, {"geo_country":"US"}]
```

Incorrect:

``` pre
"filters": [{"bid_type":"learn"}, {"bid_type":"optimized"}, {"geo_country":"US"}]
```



See <a
href="report-service.md#ReportService-JSONFields"
class="xref" target="_blank">JSON Fields</a> above for more details
about the fields that can be included in the request. For a full list of
available dimensions and metrics, see the documentation for the specific
report type that you want to run, or pull that report's metadata as
described in <a
href="report-service.md#ReportService-RESTAPIforViewingMetadata"
class="xref" target="_blank">REST API for Viewing Metadata.</a>

``` pre
$ cat report_request
{
    "report": {
        "report_type": "platform_buyer",
        "report_interval": "last_48_hours",
        "columns": ["day","imps_bought"],
        "filters": [{"geo_country":"US"}],
        "orders": [{"order_by":"day", "direction":"ASC"}],
        "format": "csv"
    }
}
```

**Step 2. `POST` the request to the Report Service**

You `POST` the JSON request and get back a report ID.

``` pre
$ curl -b cookies -c cookies -X POST -d @report_request 'https://api.adnxs.com/report?member_id=255'
{
    "response": {
        "status": "OK",
        "report_id": "ca9955709eade9a0e89f5cda5345c12r",
        "dbg_info": {
            ...
        }
    }
}
```

**Step 3. `GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this call until the `execution_status` is
`"ready"`. Then use the `report-download` service to save the reporting
data to a file. (This is described in the next step.)

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report/ca9955709eade9a0e89f5cda5345c12r'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-03-13 18:15:48",
            "cache_hit": false,
            "fact_cache_hit": false,
            "json_request": "{\"report\":{\"report_type\":\"network_analytics\",\"report_interval\":
                \"last_48_hours\",\"columns\":[\"day\",\"imps\",\"clicks\"],\"filters\":[{\"geo_country\":
                \"US\"},{\"entity_member_id\":\"514\"},{\"entity_member_id\":null}],\"orders\":
                [{\"order_by\":\"day\",\"direction\":\"ASC\"},{\"order_by\":\"imps\",\"direction\":
                \"DESC\"}]}}",
            "header_info": "Report type:,network_analytics\r\n,\r\nRun at:,2012-03-13 18:15:48\r\nStart date:,
                \r\nEnd date:,\r\nTimezone:,\r\nUser:,John Smith (9385)\r\n",
            "report_size": "10",
            "row_count": "35",
            "url": "report-download?id=ca9955709eade9a0e89f5cda5345c12r"
        },
        "execution_status": "ready",
        "dbg_info": {
            ...
        }
    }
}
```

**Step 4. `GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the url field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Tip:</b> If an error occurs during
download, the response header will include an https error code and
message. Use `-i` or `-v` in your request to expose the response header.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=<download_id>
```



You can then open the file.

![Network Analytics](media/network-analytics.png)




## Schedule Recurring Reports

You can automate the reporting process by creating saved versions of the
reports you care about and having our system email the data to you at
specified intervals. For more information about how to set up these
automated reports, see the <a
href="saved-report-service.md"
class="xref" target="_blank">Saved Report Service.</a>




## Related Topics

- <a href="saved-report-service.md" class="xref">Saved Report
  Service</a>
- <a href="completed-creative-audits-report.md" class="xref">Completed
  Creative Audits Report</a>
- <a href="bidder-platform-buyer-report.md" class="xref">Bidder Platform
  Buyer Report</a>
- <a href="bidder-billing-report-api.md" class="xref">Bidder Billing
  Report API</a>
- <a href="platform-seller-report.md" class="xref">Platform Seller
  Report</a>
- <a href="seller-platform-billing-report.md" class="xref">Seller
  Platform Billing Report</a>
- <a href="bidder-bid-error-report-api.md" class="xref">Bidder Bid Error
  Report API</a>
- <a href="inventory-availability-reporting.md" class="xref">Inventory
  Availability Reporting</a>
- <a href="reporting-timezones.md" class="xref">Reporting Timezones</a>






