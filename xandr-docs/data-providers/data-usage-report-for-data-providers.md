# Data Usage Report for Data Providers

<div class="body">

This report provides details related to your usage of data provided by
third parties (e.g., user segment providers), the costs of that data
usage and the campaigns in which that data was used to target users.

The `time_granularity` of the data is `hourly`.

<div class="note warning">

<span class="warningtitle">Warning:</span> For impressions older than
100 days, the day will be returned rather than the hour. For
instructions on retrieving a report, see the <a
href="data-usage-report-for-data-providers.html#ID-00001497__example_data_usage_report"
class="xref">Example</a> below.

</div>

<div class="section">

## Time Frame

The `report_interval` field in the JSON request must be set to one of
the following:

- `today`
- `yesterday`
- `last_7_days`
- `last_30_days`
- `month_to_date`
- `quarter_to_date`
- `last_month`
- `lifetime`

<div class="note tip">

<span class="tiptitle">Tip:</span> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

</div>

</div>

<div class="section">

## Dimensions

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d9304e141" class="entry nocellnoborder"
style="vertical-align: top">Column</th>
<th id="d9304e144" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d9304e147" class="entry nocellnoborder"
style="vertical-align: top">Group?</th>
<th id="d9304e150" class="entry nocellnoborder"
style="vertical-align: top">Filter?</th>
<th id="d9304e153" class="entry nocellnoborder"
style="vertical-align: top">Example</th>
<th id="d9304e157" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">month</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">date</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"2010-02"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The month at which the auction associated with the
impression occurred</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">day</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">date</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"2010-02-01"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The day at which the auction associated with the
impression occurred</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">hour</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">date</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code
class="ph codeph">"2010-02-01 05:00:00"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The hour at which the auction associated with the
impression occurred.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">buyer_member_id</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">int</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">643</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The ID of the member that used the third-party
data.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">buyer_member_name</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"Buyer A"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The name of the member that used the third-party
data.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">advertiser_name</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"Advertiser"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The name of the advertiser that used the
third-party-data.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">geo_country</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"US"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The code of the geographical country associated
with the impression.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">geo_country_name</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"United States"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The name of the geographical country associated
with the impression.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">geo_country_code</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">"CA"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">A two-character string denoting the country
associated with the impression. For a complete listing of allowed
values, see  <a href="https://en.wikipedia.org/wiki/ISO_3166-1"
class="xref" target="_blank">ISO 3166-1 country codes</a>.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">campaign_id</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">int</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">31</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The ID of the campaign associated with the
impressions that used third-party data targeting.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">campaign_name</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code
class="ph codeph">"Prospect Campaign"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The name of the campaign associated with the
impressions that used third-party data targeting.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">data_provider_id</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">int</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">yes</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">yes </td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code class="ph codeph">517</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The ID of the third-party that provided the
targeting data.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e141 ">targeted_segment_ids</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">no </td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code
class="ph codeph">"935035, 935146" </code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The comma-separated list of IDs for each of the
segments used when targeting.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e141 ">data_provider_name</td>
<td class="entry nocellnoborder"
headers="d9304e144 ">string</td>
<td class="entry nocellnoborder"
headers="d9304e147 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e150 ">no</td>
<td class="entry nocellnoborder"
headers="d9304e153 "><code
class="ph codeph">"Peer 39 (Data Provider)"</code></td>
<td class="entry cell-noborder"
headers="d9304e157 ">The name and ID of the third-party that provided
the targeting data. </td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d9304e141 ">cpm_usd</td>
<td class="entry -nocellborder"
headers="d9304e144 ">int</td>
<td class="entry -nocellborder"
headers="d9304e147 ">yes</td>
<td class="entry -nocellborder"
headers="d9304e150 ">no</td>
<td class="entry -nocellborder"
headers="d9304e153 "><code class="ph codeph">"0.75"</code></td>
<td class="entry cellborder"
headers="d9304e157 ">The CPM value of the data segment used</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Metrics

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d9304e544" class="entry nocellnoborder"
style="vertical-align: top">Column</th>
<th id="d9304e547" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d9304e550" class="entry nocellnoborder"
style="vertical-align: top">Example</th>
<th id="d9304e553" class="entry nocellnoborder"
style="vertical-align: top">Formula</th>
<th id="d9304e556" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e544 ">imps</td>
<td class="entry nocellnoborder"
headers="d9304e547 ">int</td>
<td class="entry nocellnoborder"
headers="d9304e550 "><code class="ph codeph">34534</code></td>
<td class="entry nocellnoborder"
headers="d9304e553 ">imps</td>
<td class="entry cell-noborder"
headers="d9304e556 ">The total number of impressions that used
third-party data to serve the ad.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d9304e544 ">data_costs</td>
<td class="entry nocellnoborder"
headers="d9304e547 ">money</td>
<td class="entry nocellnoborder"
headers="d9304e550 "><code class="ph codeph">3.50</code></td>
<td class="entry nocellnoborder"
headers="d9304e553 ">imps * CPM/1000</td>
<td class="entry cell-noborder"
headers="d9304e556 ">The monetary value of the data segments that were
purchased from third-party data providers.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d9304e544 ">data_clearing_fee_usd</td>
<td class="entry nocellnoborder"
headers="d9304e547 ">money</td>
<td class="entry nocellnoborder"
headers="d9304e550 "><code class="ph codeph">0.50</code></td>
<td class="entry nocellnoborder"
headers="d9304e553 ">data_costs * Xandr revshare</td>
<td class="entry cell-noborder"
headers="d9304e556 ">The monetary value of the revshare earned by
Xandr.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d9304e544 ">data_provider_payout_usd</td>
<td class="entry -nocellborder"
headers="d9304e547 ">money</td>
<td class="entry -nocellborder"
headers="d9304e550 "><code class="ph codeph">3.00</code></td>
<td class="entry -nocellborder"
headers="d9304e553 ">data_costs - data_clearing_fee_usd</td>
<td class="entry cellborder"
headers="d9304e556 ">The monetary value of the revenue that was paid or
will be paid to the data provider.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ID-00001497__example_data_usage_report" class="section">

## Example

**Step 1.** Create the JSON report request

The JSON file should include the `report_type` of
`"data_usage_analytics_for_data_providers"`, as well as the `columns`
(dimensions and metrics) and `report_interval` that you want to
retrieve. You can also filter for specific dimensions, define
granularity (month, day, hour), and specify the format in which the data
should be returned (csv, excel, or html).

``` pre
$ cat data_usage_analytics
        {"report":
                {
                        "format": "csv",
                        "report_interval": "yesterday",
                        "row_per": ["geo_country"],
                        "columns": ["imps","campaign_id","geo_country"],
                        "report_type": "data_usage_analytics_for_data_providers"
                }
         }
```

For a full explanation of fields that can be included in the JSON file,
see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

**Step 2.** `POST` the request to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X POST -d @data_usage_analytics "https://api.adnxs.com/report?member_id=MEMBER_ID"
         {
            "response":{
               "status":"OK",
               "report_id":"c445bca183a3d338dc1c5b85a3d484f5"
            }
         }                 
```

**Step 3.** `GET` the report status from the Report Service

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report?id=c445bca183a3d338dc1c5b85a3d484f5'
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

**Step 4.** `GET` the report data from the Report Download Service

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.

<div class="note tip">

<span class="tiptitle">Tip:</span> If an error occurs during download,
the response header will include an HTTP error code and message. Use
`-i` or `-v` in your call to expose the response header.

`$ curl -b cookies -c cookies 'https://api.adnxs.com/report-download?id=c445bca183a3d338dc1c5b85a3d484f5' > /tmp/data_usage_analytics.csv `

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="reporting-and-tracking.html" class="link">Reporting and
Tracking</a>

</div>

</div>

</div>
