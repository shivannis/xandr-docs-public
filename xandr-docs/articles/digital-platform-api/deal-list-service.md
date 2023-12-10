---
Title : Deal List Service
Description : A deal is an agreement between a buyer and a seller that provides
ms.date: 10/28/2023
ms.custom: digital-platform-api
special access to inventory and/or data. Deals are primarily used to
---


# Deal List Service



A deal is an agreement between a buyer and a seller that provides
special access to inventory and/or data. Deals are primarily used to
access preferred premium inventory or negotiated inventory. A deal list
is a group of deals IDs categorised under a heading for targeting across
line items. Deal lists allow inventory specialists to curate deals
inventory for traders as well as streamline trader workflows like
targeting the same set of deals across line items. If deal grouping
requirements change, only making required changes in the deal list will
automatically update all line items accordingly.

Deal List API facilitates search, add, modify, and fetching a specific
or different deal lists. It allows you to create, append and replace a
deal list with comma-separated deal ids.



<b>Note:</b> All query parameters in Deal List
service support a list of comma separated values. For example, to delete
a set of deal lists, a comma separated list of ids can be passed as
query parameters.





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
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/deal-list" class="xref"
target="_blank">https://api.appnexus.com/deal-list</a></p>
<p>Deal List JSON</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new deal list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/deal-list" class="xref"
target="_blank">https://api.appnexus.com/deal-list</a></p>
<p>Deal List JSON</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
a deal list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?id=DEAL_LIST_ID" class="xref"
target="_blank">https://api.appnexus.com/deal-list?id=DEAL_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a deal list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?id=DEAL_LIST_ID1,DEAL_LIST_ID2,DEAL_LIST_ID3"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?id=DEAL_LIST_ID1,DEAL_LIST_ID2,DEAL_LIST_ID3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
different deal lists.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list" class="xref"
target="_blank">https://api.appnexus.com/deal-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all deal lists and deals they contain.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?name=DEAL_LIST_NAME"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?name=DEAL_LIST_NAME</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a deal list by name and deals it contain.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?id=DEAL_LIST_ID" class="xref"
target="_blank">https://api.appnexus.com/deal-list?id=DEAL_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific deal list and deals it contain.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a deal list by advertiser id and deals it contain.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?deal_id=DEAL_ID" class="xref"
target="_blank">https://api.appnexus.com/deal-list?deal_id=DEAL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all deal lists containing a deal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/deal-list?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?search=SEARCH_TERM</a></p>

class="note note_note">
<b>Note:</b>
<p>SEARCH_TERM may be DEAL_ID or DEAL_LIST_NAME containing certain
characters.</p>

</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
a deal list by id or name as search term.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/deal-list?search=SEARCH_TERM&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?search=SEARCH_TERM&amp;advertiser_id=ADVERTISER_ID</a></p>

class="note note_note">
<b>Note:</b>
<p>SEARCH_TERM may be DEAL_ID or DEAL_LIST_NAME containing certain
characters.</p>

</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
a deal list by id or name as search term and accessible to a particular
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-list?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/deal-list?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all deal lists targeted by a line item.</td>
</tr>
</tbody>
</table>







## JSON Fields



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
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of a deal list.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT,</code> in
the JSON payload.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the deal list.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> in
the JSON payload.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">deals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
deals that are to be included in the deal list. The deal IDs of the
deals are included here. For example:</p>
<pre class="pre codeblock"><code>&quot;deals&quot;:[
{&quot;id&quot;:1},
{&quot;id&quot;:2},
{&quot;id&quot;:3}
],</code></pre>
<p><strong>Required On:</strong><code
class="ph codeph">POST</code><strong><code
class="ph codeph">,</code></strong><code
class="ph codeph"> PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
advertisers for whom the deal list is meant for. The advertiser IDs are
included here. For example:</p>
<pre class="pre codeblock"><code>&quot;advertisers&quot;:[
{&quot;id&quot;:1},
{&quot;id&quot;:2},
{&quot;id&quot;:3}
],</code></pre>

class="note note_note">
<b>Note:</b>
<p>On <code class="ph codeph">POST </code>calls, if the advertisers
field is either set to an empty array or set without any value, it
defaults to all the advertisers to whom the user has access to. In other
words, if the user has access to all the advertisers under a member,
this field defaults to an empty array because there is no advertiser
specific restriction present.</p>
<p>Similarly on <code class="ph codeph">PUT </code>calls, if the
advertisers are set to empty arrays, it defaults to all advertisers to
whom the user has access to (Not setting a field value on PUT calls have
no effect).</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Time
of last modification made to the deal list.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Time
of creation of the deal list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
line items that are targeting the deal list (line items that have a
profile attached to them and that profile is targeting the deal
list).</p>
<pre class="pre codeblock"><code>&quot;line_items&quot;:[
{&quot;id&quot;:1,
&quot;name&quot;:&quot;LINE_ITEM1&quot;,
&quot;code&quot;:null
},
{
&quot;id&quot;:2,
&quot;name&quot;:&quot;LINE_ITEM2&quot;,
&quot;code&quot;:null
}
],</code></pre>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>







## Examples

**Create a Deal List**

In this example, we create a new deal list.

>

``` pre
$ cat deal-list-create
 
{ 
   "deal-list":[ 
      { 
         "name":"My first deal list",
         "description": null,
         "advertisers":[
            {"id": 1},
            {"id": 2},
            {"id": 3}
         ]
      },
      { 
         "deals":[ 
            {"id": 1},
            {"id": 2},
            {"id": 3}
         ],
         "name":"Another one"
      }
   ]
}
 
$ curl -b cookies -X POST -d @deal-list-create 'https://api.appnexus.com/deal-list'
 
{
    "response": {
        "status": "OK",
        "deal-list": {
           "id": 3901,
           "name": "My first deal list"
           ....
         }
    }
}
```



**Update a Deal List**

In this example, we update a deal list.

``` pre
$ cat deal-list-update
 
{ 
   "deal-list": { 
       "deals": [{"id": 1}],
       "name":"My modified first deal list",
       "id":3901
   }
}
 
$ curl -b cookies -X PUT -d @deal-list-update 'https://api.appnexus.com/deal-list'
 
{
    "response": {
        "status": "OK",
        "inventory-list": {
           "id": 3901,
           "name": "XYZ Allowlist"
           "description": "Updated Description",
           ....
         }
    }
}
```

**Delete a Deal List**

In this example, we delete an existing deal list.

``` pre
$ curl -b cookies -c cookies -X DELETE https://api.appnexus.com/deal-list?id=3901
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null
    }
    }
```



>

## **Related Topics**



- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="splits-service.md"
  class="xref" target="_blank">Splits Service</a>








