---
Title : Network Creative Search
Description : The Network Creative Search report can be used to view the list of
ms.date: 10/28/2023
ms.custom: digital-platform-api
creatives that have served on the inventory within your network.
---


# Network Creative Search



The Network Creative Search report can be used to view the list of
creatives that have served on the inventory within your network.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the example below.



## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following: <span class="keyword apiname">"today",
<span class="keyword apiname">"yesterday",
<span class="keyword apiname">"last_7_days",
<span class="keyword apiname">"last_30_days", or
<span class="keyword apiname">"last_100_days".





## Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003818__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00003818__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003818__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00003818__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">"2010-02-01"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
day of the auction.
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">"2010-02"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
month of the auction.
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">123</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the buying member. If the impression was not purchased, this field
shows one of the following values: <span
class="keyword apiname">229 = PSA, <span
class="keyword apiname">0 = Blank, or <span
class="keyword apiname">319 = Default.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">456</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the selling member.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">321</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the publisher.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">654</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the creative.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><span
class="keyword apiname">194</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the site.

<b>Note:</b> For RTB impressions older than 30
days, the <code class="ph codeph">site_id</code> will be <code
class="ph codeph">0</code>.

<p><strong>Filter:</strong>Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the brand associated with the creative.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code class="ph codeph">250</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
width of the creative.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code class="ph codeph">300</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
height of the creative.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">tag_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code class="ph codeph">491</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the tag.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">media_subtype_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code class="ph codeph">491</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
ID of the media subtype associated with the creative.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code
class="ph codeph">"audited"</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
creative's audit status. Possible values: <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"audited"</code>, and <code
class="ph codeph">"unauditable"</code>.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__3"><code
class="ph codeph">"raw-html"</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__4">The
creative's format. Possible values: <code
class="ph codeph">"image"</code>, <code
class="ph codeph">"raw-js"</code>, <code
class="ph codeph">"raw-html"</code>, and <code
class="ph codeph">"iframe-html"</code>.
<p><strong>Filter:</strong> Yes</p></td>
</tr>
</tbody>
</table>







## Metrics



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003818__entry__61"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00003818__entry__62"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003818__entry__63"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00003818__entry__64"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00003818__entry__65"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__61"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__62">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__63"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003818__entry__64"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003818__entry__65">The
total number of impressions (served and resold).</td>
</tr>
</tbody>
</table>







## Example

1.  **Create the JSON-formatted report request**

    The JSON file should include the report_type
    "network_creative_search", as well as the columns (dimensions and
    metrics) and report_interval that you want to retrieve. You can also
    filter for specific dimensions, define granularity (month, day), and
    specify the format in which the data should be returned (csv, excel,
    or html). For a full explanation of fields that can be included in
    the JSON file, see the <a
    href="report-service.md"
    class="xref" target="_blank">Report Service</a>.

    ``` pre
    $ cat network_creative_search
    {
            "report":
            {
                    "report_type":"network_creative_search",
                    "columns":[
                            "day",
                            "seller_member_id",
                            "buyer_member_id",
                            "publisher_id",
                            "creative_id",
                            "brand_id",
                            "media_subtype_id",
                            "imps"
                    ],
                    "report_interval":"today",
                    "format":"csv"
            }
    }
    ```

2.  **POST the request to the Reporting Service**

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @network_creative_search 'https://api.appnexus.com/report'
    {
       "response":{
          "status":"OK",
          "report_id":"9b52ff138e5f9c822bdd8eee4119acf2"
       }
    }
    ```

3.  **GET the report status from the Report Service**

    Make a `GET` call with the Report ID to retrieve the status of the
    report. Continue making this `GET` call until the `execution_status`
    is "ready". Then use the **report-download** service to save the
    report data to a file, as described in the next step.

    ``` pre
    $ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=9b52ff138e5f9c822bdd8eee4119acf2'
    {
       "response":{
          "status":"OK",
          "report":{
             "name":null,
             "created_on": "2013-03-19 18:42:33",
             "json_request": "{\"report\":{\"report_type\":\"network_creative_search\",\"columns\" [\"day\",\"seller_member_id\",\"buyer_member_id\",\"publisher_id\",\"creative_id\",
             \"brand_id\",\"media_subtype_id\",\"imps\"],\"report_interval\":\"today\",\"format\":\"csv\",\"filters\":[{\"seller_member_id\":\"1066\"}]}}",
             "url": "report-download?id=9b52ff138e5f9c822bdd8eee4119acf2"
          },
          "execution_status":"ready"
       }
    }
    ```

4.  **GET the report data from the Report Download Service**

    To download the report data to a file, make another `GET` call with
    the Report ID, but this time to the **report-download** service. You
    can find the service and Report ID in the `url` field of the
    previous `GET` response. When identifying the file that you want to
    save to, be sure to use the file extension of the "format" that you
    specified in your initial `POST`.

    

    <b>Note:</b> If an error occurs during
    download, the response header will include an HTTP error code and
    message. Use -i or -v in your call to expose the response header.

    

    

    ``` pre
    $ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=9b52ff138e5f9c822bdd8eee4119acf2' > /tmp/network_creative.csv
    ```

    






