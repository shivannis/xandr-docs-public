---
Title : External Inventory Code Service
Description : Some sellers use their own codes to break out their inventory more
ms.date: 10/28/2023
ms.custom: digital-platform-api
granularly than by Publisher \> Site \> Placement. The External
---


# External Inventory Code Service



Some sellers use their own codes to break out their inventory more
granularly than by Publisher \> Site \> Placement. The External
Inventory Code Service allows you to register such codes with
Xandr so that you can pass them on ad calls and
then report on them. Here's how it works:

1.  You must make a `POST` call to this service to register an external
    inventory code with Xandr prior to steps 2
    and 3.
2.  You pass the code as `ext_inv_code` in the <a
    href="monetize_monetize-standard/placement-tag-parameters.md"
    class="xref" target="_blank">query string of tag-based</a> ad calls
    (see example below), or by defining an `extInvCode` value via <a
    href="seller-tag/seller-tag/define-tag.md"
    class="xref" target="_blank">AST's defineTag API</a> or the <a
    href="mobile-sdk/support-for-external-inventory-code-and-traffic-source-code-on-android.md"
    class="xref" target="_blank">Mobile SDK's API</a>.
3.  You can then report on external inventory ID/name (mapped from the
    external inventory code via the API service outlined on this page)
    in any of the following reports / feeds (that you have access to):  
    - <a
      href="monetize_monetize-standard/network-analytics-report.md"
      class="xref" target="_blank">Network Analytics Report</a> in the
      Reporting UI
    - <a
      href="network-analytics.md"
      class="xref" target="_blank">Network Analytics</a> via Reporting
      API
    - <a
      href="monetize_monetize-standard/publisher-analytics.md"
      class="xref" target="_blank">Publisher Analytics Report</a> in the
      Reporting UI
    - <a
      href="network-publisher-analytics.md"
      class="xref" target="_blank">Network Publisher Analytics</a> via
      Reporting API
    - <a
      href="network-analytics-feed.md"
      class="xref" target="_blank">Network Analytics Feed</a> via Bulk
      Reporting API
    - <a
      href="log-level-data/standard-feed.md"
      class="xref" target="_blank">Log-Level Standard Feed</a> via LLD

**Example Placement Tag with External Inventory Code**

``` pre
<script src="https://ib.adnxs.com/ttj?id=1234&ext_inv_code=ABC" type="text/javascript"></script>
```



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001c61__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001c61__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001c61__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__3">View
all of your external inventory codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__3">View
all external inventory codes for a specific publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__3">View
a specific external inventory code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code?code=CODE" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code?code=CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__3">View
a specific external inventory code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__3">Add
a new external inventory code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__3">Modify an external inventory code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__2"><a
href="https://api.appnexus.com/external-inv-code?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/external-inv-code?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__3">Delete an external inventory code.</td>
</tr>
</tbody>
</table>





## JSON Fields



<b>Tip:</b> Each combination of `publisher_id`
and `code` must be unique.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001c61__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001c61__entry__26" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00001c61__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__25"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__26">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__27">The
value that will be passed as <code
class="ph codeph">ext_inv_code</code> in the query string of tag-based
ad calls or the request body of AST/SDK-based ut/v3 ad calls.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__27">The
ID for the external inventory code.
<p><strong>Default</strong>: auto-generated number</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">DELETE</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__26">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__27">The
name for the external inventory code. This name can be included in the
(first four) Network/Publisher Analytics UI/API reports listed above.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__25"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c61__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c61__entry__27">The
ID of the publisher for which the external inventory code is used. If
<code class="ph codeph">0</code>, the code is used across multiple
publishers.
<p><strong>Default</strong>: 0</p></td>
</tr>
</tbody>
</table>





## Examples

**Adding an external inventory code for a specific publisher**

``` pre
$ cat ext_inv_code.json
{
   "external_inv_code": {
      "publisher_id": 103764,
      "code":"55",
      "name":"Code 55"
   }
}
$ curl -b cookies -c cookies -X POST -d @ext_inv_code.json 'https://api.appnexus.com/external-inv-code'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 102,
        "start_element": 0,
        "num_elements": 100,
        "external_inv_code": {
            "member_id": 1066,
            "id": 102,
            "publisher_id": 103764,
            "name": "55",
            "code": "Code 55"
        }
        }
    }
}
```

**Adding an external inventory code for use across multiple publishers**

``` pre
$ cat ext_inv_code.json
{
   "external_inv_code": {
      "publisher_id": 0,
      "code":"74",
      "name":"Code 74"
   }
}
$ curl -b cookies -c cookies -X POST -d @ext_inv_code.json 'https://api.appnexus.com/external-inv-code'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 102,
        "start_element": 0,
        "num_elements": 100,
        "external_inv_code": {
            "member_id": 1066,
            "id": 103,
            "publisher_id": 0,
            "name": "74",
            "code": "Code 74"
        }
    }
}
```

**Updating an external inventory code**

``` pre
$ cat ext_inv_code_update
{
   "external_inv_code": {
      "name":"Fresh new name"
   }
}
$ curl -b cookies -c cookies -X PUT -d @ext_inv_code_update.json 'https://api.appnexus.com/external-inv-code?id=102'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "102",
        "start_element": 0,
        "num_elements": 100,
        "external_inv_code": {
            "member_id": 1066,
            "id": 102,
            "publisher_id": 103764,
            "name": "Fresh new name",
            "code": "Code 5"
        }
    }
}
```

**Deleting an external inventory code**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/external-inv-code?id=102'
{
    "response": {
        "status": "OK"
    }
}
```






