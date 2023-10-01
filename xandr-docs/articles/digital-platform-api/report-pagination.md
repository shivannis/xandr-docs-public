---
Title : Report Pagination
Description : Report Pagination is a feature that allows API users to retrieve
long-running reports that would otherwise time out before they complete
processing. For more information about reporting API usage limits, see
---


# Report Pagination



Report Pagination is a feature that allows API users to retrieve
long-running reports that would otherwise time out before they complete
processing. For more information about reporting API usage limits, see
the Report Throttling section of the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> page.

Crafting a more granular report with fewer dimensions and metrics or
pulling a report on a shorter timeframe is usually the best option for
ensuring that a report does not time out. For tips on keeping your
reports lean and focused, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
class="xref" target="_blank">API Best Practices page</a>.

In some cases, however, it is not practical to change the dimensions,
metrics or timeframe. Report pagination can help bridge the gap and
allow you to retrieve a long-running report in smaller chunks.



## Report Pagination Required Fields

The feature requires that you include three fields in the body of your
JSON request (for details, see the
<a href="report-pagination.html#ID-00000bc3__23"
class="xref">Example</a>):

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000bc3__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000bc3__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000bc3__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__1"><code
class="ph codeph">"offset"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bc3__entry__3">The
row number that this report should start from.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__1"><code
class="ph codeph">"num_elements"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bc3__entry__3">The
number of rows this report should return in total.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__1"><code
class="ph codeph">"orders"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bc3__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bc3__entry__3">The
order of the dimensions in the report.</td>
</tr>
</tbody>
</table>





## Implementing Report Pagination

If you have used the API's paging system for retrieving configuration
objects from the API (as described in the
Paging section of <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
class="xref" target="_blank">API Semantics</a>), this feature should
feel familiar. 

The `"num_elements"` field is used to specify how many rows are in each
"page" of the report, and has no maximum value but should be tuned to a
number that allows the report to process without timing out.

The `"offset"` field should start at 0 and should increment in multiples
of `"num_elements"` until all rows of the report have been retrieved.
When the report is retrieved, if there are `n-1` or fewer rows in the
report (where `n` equals the value in `"num_elements"`), then you have
requested all of the available rows in the report. If there are `n`
rows, then you should request another paginated report.  



Warning: The `"orders"` field should
include an ordering for all dimensions included in your report. If you
submit a request for a paginated report without the `"orders"` field or
without all dimensions in the report, you may be missing rows of data or
duplicating rows of data between the paged requests of your report.







## How Many Rows Should You Retrieve at Once?

There is no maximum value on the `"num_elements"` field, so you will
want to tune this number against the time it takes to run a report in
the specific member seat that you are retrieving. Most large reports can
safely be retrieved with the `"num_elements"` field set to a value
between 1MM rows and 2MM rows, but you should test that value for your
own report. 





## Example

**Step 1. Create the paginated report JSON **

This particular report will consist of two report requests:
`report_page_1.json` and `report_page_2.json`. Note that the requests
are identical except for the `"offset"` field, and that the `"orders"`
field is required.

``` pre
$ cat report_page_1.json    
                                                    
{
    "report": {
        "report_type":"network_site_domain_performance",
        "start_date"    : "2014-03-27",
        "end_date"      : "2014-03-28",
        "groups":[
                  "advertiser_id"
                  ],
        "columns":[
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_name",
                   "top_level_category_id",
                   "second_level_category_name",
                   "second_level_category_id",
                   "deal_id",
                   "deal_name",
                   "deal_code",
                   "site_domain",
                   "imps",
                   "clicks",
                   "post_click_convs",
                   "post_view_convs",
                   "media_cost",
                   "booked_revenue"
                   ],
  
        "row_per":[
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_id",
                   "second_level_category_id",
                   "deal_id",
                   "site_domain"
                  ],
     "orders": [
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_id",
                   "second_level_category_id",
                   "deal_id",
                   "site_domain"
          ],
     "offset": 0,
     "num_elements": 2000000
    }
}
$ cat report_page_2.json    
                                                    
{
    "report":{
        "report_type":"network_site_domain_performance",
        "start_date"    : "2014-03-27",
        "end_date"      : "2014-03-28",
        "groups":[
                  "advertiser_id"
                  ],
        "columns":[
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_name",
                   "top_level_category_id",
                   "second_level_category_name",
                   "second_level_category_id",
                   "deal_id",
                   "deal_name",
                   "deal_code",
                   "site_domain",
                   "imps",
                   "clicks",
                   "post_click_convs",
                   "post_view_convs",
                   "media_cost",
                   "booked_revenue"
                   ],
  
        "row_per":[
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_id",
                   "second_level_category_id",
                   "deal_id",
                   "site_domain"
                  ],
     "orders": [
                   "day",
                   "buyer_member_id",
                   "advertiser_id",
                   "line_item_id",
                   "campaign_id",
                   "top_level_category_id",
                   "second_level_category_id",
                   "deal_id",
                   "site_domain"
          ],
     "offset": 2000000,
     "num_elements": 2000000
    }
}
```

**Step 2. Submit the requests**

``` pre
$ curl -b cookie -c cookie -X POST -s -d @report_page_1.json "https://api.appnexus.com/report"
{
  "response": {
    "status": "OK",
    "report_id": "6b7a44dc1b3f8bc47cd4d8sd32e4f841c",
    "existing": true,
    "dbg_info": {
      ...
    }
  }
}
$ curl -b cookie -c cookie -X POST -s -d @report_page_2.json "https://api.appnexus.com/report"
{
  "response": {
    "status": "OK",
    "report_id": "700367274ae2c84b337436a4absdd835",
    "existing": true,
    "dbg_info": {
      ...
    }
  }
}
```

**Step 3. Check that both reports process**

``` pre
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report?id=6b7a44dc1b3f8bc47cd4d8sd32e4f841c" 
 
{
  "response": {
    "status": "OK",
    "report": {
      "name": null,
      "created_on": "2014-04-10 23:01:36",
      "cache_hit": false,
      "fact_cache_hit": false,
      "fact_cache_error": "did not find any cache table for 1,2,30,31,66,32,34,36,6,4,5,100,110",
      "json_request": "{\"report\":{\"report_type\":\"network_site_domain_performance\",\"start_date\":\"2014-03-27\",\"end_date\":\"2014-03-28\",\"groups\":[\"advertiser_id\"],\"columns\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_name\",\"top_level_category_id\",\"second_level_category_name\",\"second_level_category_id\",\"deal_id\",\"deal_name\",\"deal_code\",\"site_domain\",\"imps\",\"clicks\",\"post_click_convs\",\"post_view_convs\",\"media_cost\",\"booked_revenue\"],\"row_per\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_id\",\"second_level_category_id\",\"deal_id\",\"site_domain\"],\"orders\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_id\",\"second_level_category_id\",\"deal_id\",\"site_domain\"],\"offset\":0,\"num_elements\":2000000,\"filters\":[{\"buyer_member_id\":958}]}}",
      "header_info": "Report ID:,6b7a44dc1b3f8bc47cd4d8e32e4f841c\r\nRun at:,2014-04-10 23:01:36\r\nStart date:,2014-03-27 00:00:00\r\nEnd date:,2014-03-28 00:00:00\r\nTimezone:,\r\nUser:,Uri Bushey (123456)\r\n",
      "row_count": "2000000",
      "report_size": "248161427",
      "url": "report-download?id=6b7a44dc1b3f8bc47cd4d8e32e4f841c"
    },
    "execution_status": "ready",
    "dbg_info": {
      ...
    }
  }
}
  
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report?id=700367274ae2c84b337436a4absdd835" 
{
  "response": {
    "status": "OK",
    "report": {
      "name": null,
      "created_on": "2014-04-10 23:01:41",
      "cache_hit": false,
      "fact_cache_hit": false,
      "fact_cache_error": "did not find any cache table for 1,2,30,31,66,32,34,36,6,4,5,100,110",
      "json_request": "{\"report\":{\"report_type\":\"network_site_domain_performance\",\"start_date\":\"2014-03-27\",\"end_date\":\"2014-03-28\",\"groups\":[\"advertiser_id\"],\"columns\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_name\",\"top_level_category_id\",\"second_level_category_name\",\"second_level_category_id\",\"deal_id\",\"deal_name\",\"deal_code\",\"site_domain\",\"imps\",\"clicks\",\"post_click_convs\",\"post_view_convs\",\"media_cost\",\"booked_revenue\"],\"row_per\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_id\",\"second_level_category_id\",\"deal_id\",\"site_domain\"],\"orders\":[\"day\",\"buyer_member_id\",\"advertiser_id\",\"line_item_id\",\"campaign_id\",\"top_level_category_id\",\"second_level_category_id\",\"deal_id\",\"site_domain\"],\"offset\":2000000,\"num_elements\":2000000,\"filters\":[{\"buyer_member_id\":958}]}}",
      "header_info": "Report ID:,700367274ae2c84b337436a4ab80b835\r\nRun at:,2014-04-10 23:01:41\r\nStart date:,2014-03-27 00:00:00\r\nEnd date:,2014-03-28 00:00:00\r\nTimezone:,\r\nUser:,Uri Bushey (12345)\r\n",
      "row_count": "1834708",
      "report_size": "226384504",
      "url": "report-download?id=700367274ae2c84b337436a4ab80b835"
    },
    "execution_status": "ready",
    "dbg_info": {
      ...
    }
  }
}
```

**Step 4. Download the finished reports**

``` pre
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report-download?id=6b7a44dc1b3f8bc47cd4d8sd32e4f841c' > report_page_1.csv
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report-download?id=700367274ae2c84b337436a4absdd835' > report_page_2.csv
```

**Step 5. Check that row count matches total row count**

``` pre
$ wc -l report_page_1.csv 
2000000 report_page_1.csv
$ wc -l report_page_2.csv 
1834708 report_page_2.csv
```



<div id="ID-00000bc3__section_pym_jq5_twb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
  class="xref" target="_blank">Report Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-usage-constraints.html"
  class="xref" target="_blank">API Usage Constraints</a>






