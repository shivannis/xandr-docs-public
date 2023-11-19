---
Title : Saved Report Service
Description : The Saved Report service can be used to create new reports which are
ms.date : 10/28/2023
saved and can be retrieved at any time. They are useful for reports
---


# Saved Report Service



The Saved Report service can be used to create new reports which are
saved and can be retrieved at any time. They are useful for reports
which are executed frequently. The Saved Report Service acts as a
wrapper around the <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service.</a>



<b>Note:</b> There is a limit of 100K rows per
report.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006fbf__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00006fbf__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00006fbf__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__2"><a
href="https://api.adnxs.com/saved-report" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/saved-report</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__3">View
all saved reports for your member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__2"><a
href="https://api.adnxs.com/saved-report/ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/saved-report/ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__3">View
a specific saved report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__2"><a
href="https://api.adnxs.com/saved-report" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/saved-report</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__3">Add
a new saved report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__2"><a
href="https://api.adnxs.com/saved-report/ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/saved-report/ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__3">Modify an existing saved report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__2"><a
href="https://api.adnxs.com/saved-report/ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/saved-report/ID</a> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__3">Delete an existing saved report.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006fbf__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00006fbf__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006fbf__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
category of the report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
date and time on which the saved report was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">emails</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
list of emails to send the report. The array should be in the format
["email_address1@<a href="http://domain.com" class="xref"
target="_blank">domain.com</a>", "email_address2@<a
href="http://domain.com" class="xref" target="_blank">domain.com</a>",
...]</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
entity ID of the user creating the report. This sets the scope of the
report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">expires_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
date and time on which a saved report expires. This is currently limited
to one year in the future. The date/time should be specified in the
format "YYYY-MM-DD HH:MM:SS" where the time is specified in 24-hour
format.
<p><strong>Required On:</strong> <strong></strong> POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
format in which the report results will be saved. Possible values:
"excel" or "csv".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
internal ID associated with the saved report.
<p><strong>Required On:</strong> PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
date and time on which the saved report was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
name of the report which is display in . The
maximum length is 100 characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">report</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__21">Report defined in the same format as
used in the <a
href="xandr-api/report-service.md"
class="xref" target="_blank">Report Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__19"><code
class="ph codeph">scheduling</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006fbf__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006fbf__entry__21">The
frequency with which the report is executed. Possible values: "daily",
"weekly", or "monthly".</td>
</tr>
</tbody>
</table>




## Examples

**Adding a new saved report for a publisher**

``` pre
    {
    "saved-report": {
        "name": "Seller Platform Billing Report 48 Hours JMS",
        "report": {
            "report_type": "seller_platform_billing",
            "columns": [
                "day",
                "imps",
                "seller_revenue"
            ],
            "timezone": "EST",
            "report_interval": "last_48_hours"
        },
        "scheduling": "daily",
        "format": "excel",
        "emails": [
            "ejones@xandr.com",
            "bsmith@xandr.com"
        ],
        "expires_on": "2014-08-05 11:22:33"
    }
}
 
$ curl -b cookies -c cookies -X POST -d @saved-report.json 'https://api.adnxs.com/saved-report' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null,
        "saved_reports":[
            {
                "id":826,
                "name":"Seller Platform Billing Report 48 Hours JMS",
                "report":{
                    "report_type":"seller_platform_billing",
                    "columns":[
                        "day",
                        "imps",
                        "seller_revenue"
                    ],
                    "timezone":"EST",
                    "report_interval":"last_48_hours",
                    "filters":[
                        {
                            "seller_member_id":"7"
                        }
                    ]
                },
                "scheduling":"daily",
                "format":"excel",
                "emails":[
                    "jschneider@xandr.com",
                    "bsmith@xandr.com"
                ],
                "created_on":"2014-04-16 20:55:59",
                "expires_on":"2014-08-05 11:22:33",
                "category":null,
                "entity_id":null,
                "last_activity":"2014-04-16 20:55:59"
            }
        ]
        }
}
```

**Executing and retrieving a saved report**

``` pre
$ curl -b cookies -c cookies -X POST 'https://api.adnxs.com/report?saved_report_id=826' 
{
    "response":{
        "existing":false,
        "status":"OK",
        "report_id":"5f45fcccc5c4b4ba6fb9747bf6fc33b9"
        }
}
$ curl -b cookies -c cookies "https://api.adnxs.com/report?id=fa16873114e1d5697091069e45bccec0"
{
    "response":{
        "status":"OK",
        "report":{
            "name":null,
            "created_on":"2014-04-16 21:15:04",
            "json_request":
                                "{\"report\":
                                        {\"report_type\":\"seller_platform_billing\",
                    \"columns\":[
                        \"day\",
                        \"imps\",
                        \"seller_revenue\"
                    ],
                    \"timezone\":\"EST\",
                    \"report_interval\":\"last_48_hours\",
                    \"filters\":[
                        {
                            \"seller_member_id\":\"7\"
                        },
                        {
                            \"seller_member_id\":\"7\"
                        }
                    ]
                }
            }
            "data":"day,imps,seller_revenue\r\n",
        },
        "execution_status":"ready",
   }
}
 
$ curl -b cookies -c cookies -s "https://api.adnxs.com/report-download?id=fa16873114e1d5697091069e45bccec0" > report.csv
```

**Updating an Existing Report**

``` pre
$ cat add-columns-saved-report.json
{
    "saved_report": {
            "report":{
                "report_type":"seller_platform_billing",
                "columns":[
                    "day",
                    "imps",
                    "seller_revenue",
                    "bidder_id"       
                ],
                "timezone":"EST",
                "report_interval":"last_48_hours",
                "filters":[
                    {
                        "seller_member_id":"7"
                    }
                ]
            }
    }
}
 
$ curl -b cookies -c cookies -X PUT -d @add-column-saved-report.json 'https://api.adnxs.com/saved-report?id=826'
{
 "response": {
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null,
        "id":"826",
        "saved_report":{
            "id":826,
            "name":"Seller Platform Billing Report 48 Hours JMS",
            "report":{
                "report_type":"seller_platform_billing",
                "columns":[
                    "day",
                    "imps",
                    "seller_revenue",
                    "bidder_id"
                ],
                "timezone":"EST",
                "report_interval":"last_48_hours",
                "filters":[
                    {
                        "seller_member_id":"7"
                    }
                ]
            },
            "scheduling":"daily",
            "format":"excel",
            "emails":[
                "jschneider@xandr.com",
                "bsmith@xandr.com"
            ],
            "created_on":"2014-04-16 20:55:59",
            "expires_on":"2014-08-05 11:22:33",
            "category":null,
            "entity_id":null,
            "last_activity":"2014-04-17 16:00:27"
        },
        "dbg":{
            ...
        }
    }
}
```




## Related Topics

- <a href="report-service.md" class="xref">Report Service</a>
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
- <a href="inventory-availability-reporting.md" class="xref">Inventory
  Availability Reporting</a>
- <a href="reporting-timezones.md" class="xref">Reporting Timezones</a>






