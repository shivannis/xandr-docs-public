---
Title : Tag Parser Service
Description : When you receive a file of ad tags from Atlas, Mediamind, or
ms.date: 10/28/2023
ms.custom: digital-platform-api
DoubleClick, or when you format a list of ad tags using the AppNexus
template, you can use the Tag Parser Service to parse out the name,
size, and content of each tag in the file. Note that you must
---


# Tag Parser Service



When you receive a file of ad tags from Atlas, Mediamind, or
DoubleClick, or when you format a list of ad tags using the AppNexus
template, you can use the Tag Parser Service to parse out the name,
size, and content of each tag in the file. Note that you must
base64-encode the file to parse it with this service.



<b>Note:</b> The Xandr UI uses this service as
part of the bulk creative upload feature.





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/tag-parser-job" class="xref"
target="_blank">https://api.appnexus.com/tag-parser-job</a>(tags
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Parse
a file of tags from Atlas, Mediamind, DoubleClick, or AppNexus.</td>
</tr>
</tbody>
</table>







## JSON Fields

The JSON-formatted file can contain one of more arrays of the following
fields. See the example below for formatting.



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ad server that provided the file. Possible values: "atlas", "mediamind",
or "doubleclick", or "doubleclick_txt" "appnexus_excel".</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">file</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
base64-encoded Atlas, Mediamind, or DoubleClick file.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>



The response will include the name, width, height, and content of each
tag in the file.





## Examples



**Parse a file of tags from DoubleClick**



<b>Note:</b> The data in this example is for
demonstration only. It does not represent an actual file of tags from
DoubleClick.





>

``` pre
$ cat tags

{
    "tag_parser_jobs": [
       {
          "type": "doubleclick",
          "file": "fAAAAAMAAAAEAAAABQAAAAYAAAAHAAAACAAAAAkAAAAKAAAACwAAAAwAAAANAAAA
           DgAAAA8AAAAQAAAAEQAAABIAAAATAAAAFAAAABUAAAAWAAAAFwAAABgAAAAZAAAAGgAAABs
           AAAAcAAAAHQAAAB4AAAAfAAAAIAAAACEAAAAiAAAAIwAAACQAAAAlAAAAJgAAACcAAAAoAA
           AAKQAAACoAAAArAAAALAAAAC0AAAAuAAAALwAAADAAAAAxAAAAMgAAADMAAAA0AAAANQAAA
           DYAAAA3AAAAOAAAADkAAAA6AAAAOwAAADwAAAA9AAAAPgAAAD8AAABAAAAAQQAAAEIAAABD
           AAAARAAAAEUAAABGAAAARwAAAEgAAABJAAAASgAAAEsAAABMAAAATQAAAE4AAABPAAAAUAA
           AAFEAAABSAAAAUwAAAFQAAABVAAAAVgAAAFcAAABYAAAAWQAAAFoAAABbAAAAXAAAAF0AAA
           BeAAAAXwAAAGAAAABhAAAAYgAAAGMAAABkAAAAZQAAAGYAAABnAAAAaAAAA..."
       }
    ]
}

$ curl -b cookies -c cookies -X POST -d @tags 'https://api.appnexus.com/tag-parser-job'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1110,
        "start_element": null,
        "num_elements": null,
        "tag_parser_job": {
            "id": 1110,
            "status": "finished",
            "tags": [
                {
                    "name": "Tag 1",
                    "width": 728,
                    "height": 90,
                    "content": "<IFRAME SRC=\"https://example.adserver.net/N5956.124505.4370930011621/
                     B3941858.2;sz=120x600;ord=[timestamp]?\" WIDTH=120 HEIGHT=600 MARGINWIDTH=0
                     MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=no BORDERCOLOR='#000000'>
                     <SCRIPT language='JavaScript1.1' SRC=\"https://example.adserver.net/adj/N5956.124505.
                     4370930011621/B3941858.2;abr=!ie;sz=120x600;ord=[timestamp]?\">  </SCRIPT>
                     ..."
                },
                {
                    "name": "Tag 2",
                    "width": 160,
                    "height": 600,
                    "content": "<IFRAME SRC=\"https://example.adserver.net/N5956.124505.4370930011621/
                     B3941858.2;sz=120x600;ord=[timestamp]?\" WIDTH=120 HEIGHT=600 MARGINWIDTH=0
                     MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=no BORDERCOLOR='#000000'>
                     <SCRIPT language='JavaScript1.1' SRC=\"https://example.adserver.net/adj/N5956.124505.
                     4370930011621/B3941858.2;abr=!ie;sz=120x600;ord=[timestamp]?\">  </SCRIPT>
                     ..."
                },
                {
                    "name": "Tag 3",
                    "width": 300,
                    "height": 250,
                    "content": "<IFRAME SRC=\"https://example.adserver.net/N5956.124505.4370930011621/
                     B3941858.2;sz=120x600;ord=[timestamp]?\" WIDTH=120 HEIGHT=600 MARGINWIDTH=0
                     MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=no BORDERCOLOR='#000000'>
                     <SCRIPT language='JavaScript1.1' SRC=\"https://example.adserver.net/adj/N5956.124505.
                     4370930011621/B3941858.2;abr=!ie;sz=120x600;ord=[timestamp]?\">  </SCRIPT>
                     ..."
                }
            ]
        }
    }
}
```








