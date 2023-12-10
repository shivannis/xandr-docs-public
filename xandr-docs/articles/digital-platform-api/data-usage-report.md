---
Title : Data Usage Report
Description : This report provides gives details related to your usage of data
ms.date: 10/28/2023
ms.custom: digital-platform-api
provided by third parties (e.g., user segment providers), the costs of
---


# Data Usage Report





This report provides gives details related to your usage of data
provided by third parties (e.g., user segment providers), the costs of
that data usage and line items/campaigns in which that data was used to
target users.

This report's data is retained for 60 days. The `time_granularity` of
the data is `hourly`. For instructions on retrieving a report, see the
<a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="data-usage-report.md#data-usage-report__example_data_usage_report"
class="xref">Example</a> below.





## Time Frame



The `report_interval` field in the JSON request must be set to one of
the following:

- today
- yesterday
- last_7_days
- last_30_days
- month_to_date
- quarter_to_date
- last_month
- lifetime







<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="data-usage-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="data-usage-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="data-usage-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="data-usage-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="data-usage-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The month at which the auction
associated with the impression occurred</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The day at which the auction
associated with the impression occurred</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"2010-02-01 05:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The hour at which the auction
associated with the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">643</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The ID of the member that used the
third-party data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The code of the geographical
country associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The name of the geographical
country associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">geo_country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"CA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">A two-character string denoting
the country associated with the impression. For a complete listing of
allowed values, see <a href="https://en.wikipedia.org/wiki/ISO_3166-1"
class="xref" target="_blank">ISO 3166-1 country codes</a> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">31</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The ID of the campaign associated
with the impression that used third-party data targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Prospect Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The name of the campaign
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Prospect Campaign (31)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5"><strong>Deprecated</strong> (as of
October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The ID of the split that purchased
the impressions in this data set. Splits are only applicable to
augmented line items. For any reports that contain campaigns, the <code
class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The name of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_name</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">data_provider_id</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">517</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The ID of the third-party that
provided the targeting data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Fall Apparel"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The name of the line item
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">targeted_segment_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"935035, 935146"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The comma-separated list of IDs
for each of the segments used when targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">data_provider</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Peer 39 (Data Provider) (517)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5"><strong>Deprecated</strong> (as of
October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__1">data_provider_name</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__4"><code
class="ph codeph">"Peer 39 (Data Provider)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__5">The name and ID of the third-party
that provided the targeting data.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="data-usage-report__entry__91"
class="entry colsep-1 rowsep-1">Column</th>
<th id="data-usage-report__entry__92"
class="entry colsep-1 rowsep-1">Type</th>
<th id="data-usage-report__entry__93"
class="entry colsep-1 rowsep-1">Example</th>
<th id="data-usage-report__entry__94"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="data-usage-report__entry__95"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__92">int</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__93"><code
class="ph codeph">34534</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__94">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__95">The total number of impressions
that used third-party data to serve the ad.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91">data_costs</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__92">money</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__93"><code
class="ph codeph">3.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__94"></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__95">The monetary value of the data
segments that were purchased from third-party data providers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91">sales_tax</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__92">money</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__93"><code
class="ph codeph">.43</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__94"></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__95">The amount of sales tax
collected. This field is only populated when the Buyer's billing address
is located in one of the following U.S. states: NY, TX or NJ. Xandr is
required (by the relevant local state regulator) to collect this
tax.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91">data_type</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__92">string</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__93"><code
class="ph codeph">Segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__94"></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__95">The available choices are Segment
and Cross Device</td>
</tr>
<tr class="odd row">
<td colspan="5" class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91 data-usage-report__entry__92 data-usage-report__entry__93 data-usage-report__entry__94 data-usage-report__entry__95"><strong>Metrics
available in local currency</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__91">data_costs_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__92">money</td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__93"><code
class="ph codeph">3.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__94"></td>
<td class="entry colsep-1 rowsep-1"
headers="data-usage-report__entry__95">The monetary value of the data
segments that were purchased from third-party data providers.
Represented in the Advertiser's currency</td>
</tr>
</tbody>
</table>



>

## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"buyer_data_usage_analytics"`, as well as the columns (dimensions and
metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (`month`, `day`,
`hour`), and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat buyer_data_usage_analytics

{"report":
    {
        "format": "csv",
        "report_interval": "yesterday",
        "row_per": ["geo_country"],
        "columns": ["imps","campaign_id","geo_country"],
        "report_type": "buyer_data_usage_analytics"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @seller_brand_review "https://api.appnexus.com/report"

{
   "response":{
      "status":"OK",
      "report_id":"c445bca183a3d338dc1c5b85a3d484f5"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=c445bca183a3d338dc1c5b85a3d484f5'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 22:33:31",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"geo_country\"],\"columns\":[\"imps\",\"campaign_id\",\"geo_country\"],\"report_type\":\"buyer_data_usage_analytics\",\"filters\":[{\"buyer_member_id\":\"958\"}]}}",
            "url": "report-download?id=c445bca183a3d338dc1c5b85a3d484f5"
        },
        "execution_status": "ready"
    }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c445bca183a3d338dc1c5b85a3d484f5' > /tmp/buyer_data_usage_analytics.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








