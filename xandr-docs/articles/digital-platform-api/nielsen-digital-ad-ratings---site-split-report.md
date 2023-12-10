---
Title : Nielsen Digital Ad Ratings - Site/Split Report
Description : The Nielsen Digital Ad Ratings (DAR) - Site/Split Report gives you
ms.date: 10/28/2023
ms.custom: digital-platform-api
insight into the publisher domains and audiences connected to your line
item's impressions. If your line item's using splits, this report also
---


# Nielsen Digital Ad Ratings - Site/Split Report





The Nielsen Digital Ad Ratings (DAR) - Site/Split Report gives you
insight into the publisher domains and audiences connected to your line
item's impressions. If your line item's using splits, this report also
gives you information on their performance. Audience demographic
measuring must be enabled for your line item to utilize this report.

For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="nielsen-digital-ad-ratings---site-split-report.md#nielsen-digital-ad-ratings-site-split-report__example"
class="xref">example</a> below.



>

## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- last_7_days
- last_14_days
- month_to_date
- last_30_days
- quarter_to_date
- last_100_days
- last_365_days
- year_to_date



**Data Retention Period**

Data retention period for this report is 365 days. Data in this report
has a daily time granularity and lifetime retention. This report also
displays data under the U.S. Eastern time zone.



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.





>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">553515</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">ID
of the insertion order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">261181457</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">ID
of the line item split</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">4919231</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">ID
of the advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">13731149</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">ID
of the line item</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">line_item.name</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"My Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">Name
of the line item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">site_domain_unobfuscated</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"thesaurus.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
web domain where impressions were recorded</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">ymd</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">2021-05-02</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
year, month, and day of the last available day for data</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">958</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">ID
of the member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">demographic_group</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"male 25-29"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">A
demographic group sorted by sex and age range</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">platform</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"desktop"</code>, <code
class="ph codeph">"mobile"</code>, or <code
class="ph codeph">"connected device"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">Filter
for the type of device used</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">nielsen_campaign_ref</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"scm1521250"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
Nielsen campaign reference ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">2021-04-26 </code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
date on which Nielsen first started collecting data</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">Country
where impressions were recorded</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">91</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
code representing a country where impressions were recorded</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__4"><code
class="ph codeph">"My Split"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__dimensions__entry__5">The
name of a line item's split</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">population</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">11080000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">Based
on census-provided data, the number of people in the country included in
a given demographic</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">total_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">89</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">The
total number of impressions your line item has made</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">on_target_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">32</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">On
Target Impressions = Impressions Seen by Target Demographic ÷ Total
Impression Count for your Line Item</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">The
number of impressions served to your desired demographic group that are
within your selected reporting dimensions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">imps_share</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">0.5128205128205128</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">Impressions
Share (%) = Demographic Impressions ÷ Total Number of Impressions Across
all Demographic Groups × 100</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">Based
on the line item's total impression count, the percentage that served to
your targeted demographic</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">imps_index</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">21.851728591916128</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">Impressions
Index = Impression Share (%) ÷ Demographic-Specific Population ×
100</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">A
targeting success score based on how the line item's impressions are
divided across all demographics</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">on_target_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">0.5128205128205128</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">On
Target Percent (%) = Impressions Seen by Target Demographic ÷ Total
Impression Count for your Line Item × 100</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">The
percentage of impressions served to your selected demography</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">population_share</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">7.7502</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">Population
Share (%) = Demographic Population ÷ Population of all Demographics ×
100</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">Percentage
of people within a demographic relative to the total population</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">unique_audience</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">132297</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">The
total of unique individuals in the audience that your line item has
reached</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__1">audience_share</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__3"><code
class="ph codeph">23.64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__4">Audience
Share (%) = Row Level Audience Count ÷ Campaign Total Audience Count ×
100</td>
<td class="entry colsep-1 rowsep-1"
headers="nielsen-digital-ad-ratings-site-split-report__metrics__entry__5">The
percentage share of the total audience a line item has reached within a
certain demographic group. This measurement is rounded to two decimal
places.</td>
</tr>
</tbody>
</table>



>

## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"video_indemo_site_split"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (`year`, `month`,
`day`), and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat site_split_report

{
    "report":
    {
        "report_type":"video_indemo_site_split",
        "columns":[
            "nielsen_campaign_ref",
            "line_item",
            "line_item.name",
            "start_date",
            "site_domain_unobfuscated",
            "split_name",
            "demographic_group",
            "total_imps",
            "on_target_imps"
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```

**`POST` the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @site_split_report 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"video_indemo_site_split\",\"columns\":[\"nielsen_campaign_ref\",
            \"line_item\",\"line_item.name\",\"start_date\",\"site_domain_unobfuscated\",\"split_name\",\"demographic_group\",\"total_imps\",\"on_target_imps\"],
            \"report_interval\":\"last_7_days\"}}",
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
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/video_indemo_audience_profile.csv
```






