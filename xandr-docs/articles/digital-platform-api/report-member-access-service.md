---
Title : Report Member Access Service
Description : Report Member Access is an admin-only service that allows users to
ms.date: 10/28/2023
ms.custom: digital-platform-api
update which members have access to restricted reports. It updates the
---


# Report Member Access Service



Report Member Access is an admin-only service that allows users to
update which members have access to restricted reports. It updates the
data stored in bidder.rpt_report_member_access.



<b>Note:</b> only `GET`, `POST` and `DELETE`
is supported for this service.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002e88__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002e88__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002e88__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__2">https://api.<span
class="ph">appnexus.com/rpt-report-member-access
<p>(template JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__3">Add
a new report-member-access setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__2">https://api.<span
class="ph">appnexus.com/&lt;object&gt;?id=REPORT_MEMBER_ACCESS_ID

<b>Note:</b> <code
class="ph codeph">REPORT_MEMBER_ACCESS_ID</code> is a uniquely generated
id for the given setting and can be retrieved via <code
class="ph codeph">GET</code>.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__3">Delete a custom template</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__2">https://api.<span
class="ph">appnexus.com/rpt-report-member-access</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__3">View
all report-member-access settings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__2">https://api.<span
class="ph">appnexus.com/rpt-report-member-access?report_id=REPORT_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__3">View
report-member-access settings for a specific report</td>
</tr>
</tbody>
</table>







## JSON Fields



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002e88__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002e88__entry__17" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002e88__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__18">The
ID of the report member access setting.
<p><strong>Default:</strong>Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__16"><code
class="ph codeph">member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__17">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__18">An
object with an id of the member for which you're adding access.
<p><strong>Default:</strong> None</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__16"><code
class="ph codeph">report</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e88__entry__17">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e88__entry__18">An
object with an id of the report for which you're adding access.
<p><strong>Default:</strong> None</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>







## Example

**View all members who have access to a specific report**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/rpt-report-member-access?report_id=44'
{
  "response": {
    "status": "OK",
    "count": 28,
    "start_element": 0,
    "num_elements": 100,
    "rpt-report-member-accesss": [
      {
        "id": 27,
        "last_modified": "2013-03-01 20:37:01",
        "member": {
          "id": 357,
          "billing_name": "OpenX"
        },
        "report": {
          "id": 44,
          "name": null
        }
      },
      {
        "id": 28,
        "last_modified": "2013-04-09 18:13:25",
        "member": {
          "id": 459,
          "billing_name": "Rubicon"
        },
        "report": {
          "id": 44,
          "name": null
        }
      },
        ...
}
```



**Give a member access to a specific report**

``` pre
$ cat rpt_report_member_access

{
    "rpt-report-member-access": {
        "report": {
            "id":44
        },
        "member": {
            "id": 123
        }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @rpt-report-member-access 'https://api.appnexus.com/rpt-report-member-access'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "rpt-report-member-access": {
        "id": 77,
        "last_modified": "2015-01-15 20:37:01",
        "member": {
          "id": 123,
          "billing_name": "MemberName"
        },
        "report": {
          "id": 44,
          "name": null
        }
      }
        }
...
}
```






