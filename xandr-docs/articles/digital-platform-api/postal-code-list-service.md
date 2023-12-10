---
Title : Postal Code List Service
Description : In the traditional way of geo-targeting of audiences, users can target
ms.date: 10/28/2023
ms.custom: digital-platform-api
only a limited number of postal codes at the line item or split level.
---


# Postal Code List Service



In the traditional way of geo-targeting of audiences, users can target
only a limited number of postal codes at the line item or split level.
With the introduction of the Postal Code List Service API into the Xandr
platform, this limitation will be eliminated. The Postal Code List API
will allow buyers to create a list of postal codes and reuse it across
different objects (line items, splits) for targeting. With the Postal
Code List Service, users can now target 100k postal codes on an
individual list and 100 individual lists on a line item or split.

The Postal Code List Service enables user:

- To search, create, fetch and delete a specific or different include
  and exclude postal code lists containing a number of postal codes (by
  postal code ID).

- To enable include and exclude postal code list targeting on line item
  and split level.



<b>Note:</b>

All query parameters in postal code list service support a list of comma
separated values. For example, to delete a set of postal code lists, a
comma separated list of ids can be passed as query parameters.



>

## REST API



<table id="postal-code-list-service__table_kl5_5kc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="postal-code-list-service__table_kl5_5kc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="postal-code-list-service__table_kl5_5kc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="postal-code-list-service__table_kl5_5kc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list" class="xref"
target="_blank">https://api.appnexus.com/postal-code-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">Add a
new Postal Code List.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list" class="xref"
target="_blank">https://api.appnexus.com/postal-code-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">Modify a
Postal Code List.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">Delete a
Postal Code List.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID1,POSTAL_CODE_LIST_ID2,POSTAL_CODE_LIST_ID3"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID1,POSTAL_CODE_LIST_ID2,POSTAL_CODE_LIST_ID3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">Delete
multiple Postal Code Lists.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list" class="xref"
target="_blank">https://api.appnexus.com/postal-code-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">View all
Postal Code Lists and Postal Codes they contain.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?name=POSTAL_CODE_LIST_NAME"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?name=POSTAL_CODE_LIST_NAME</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">View a
Postal Code List by name and Postal Codes it contains.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?id=POSTAL_CODE_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">View a
specific Postal Code List and Postal Codes it contains.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?postal_code_id=POSTAL_CODE_ID"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?postal_code_id=POSTAL_CODE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">View all
Postal Code Lists containing a Postal Code.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3"><p>Search
a Postal Code List by ID or name as search term.</p>
class="note note_note">
<b>Note:</b>
<p>SEARCH_TERM may be POSTAL_CODE_ID or POSTAL_CODE_LIST_NAME containing
certain characters.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__2"><a
href="https://api.appnexus.com/postal-code-list?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/postal-code-list?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_kl5_5kc_xwb__entry__3">View all
Postal Code Lists targeted by a line item.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table id="postal-code-list-service__table_lq1_fmc_xwb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 17%" />
<col style="width: 49%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="postal-code-list-service__table_lq1_fmc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="postal-code-list-service__table_lq1_fmc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="postal-code-list-service__table_lq1_fmc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3"><p>The
ID of a postal code list.</p>
<strong>Required On</strong>: <code class="ph codeph">PUT</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3"><p>The
name of the postal code list.</p>
<strong>Required On</strong>: <code class="ph codeph">Post</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">postal_codes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3">The
postal codes that are to be included in the postal code list. The postal
code IDs of the postal codes are included here. For example any of the
below formats can be used:
<pre id="postal-code-list-service__codeblock_k21_lmc_xwb"
class="pre codeblock"><code>&quot;postal_codes&quot;:[
            {&quot;id&quot;: 1},
            {&quot;id&quot;: 2},
            {&quot;id&quot;: 3}
         ],</code></pre>
<pre id="postal-code-list-service__codeblock_bdq_rmc_xwb"
class="pre codeblock"><code>&quot;postal_codes&quot;: [ 
            {&quot;country_code&quot;:&quot;US&quot;,&quot;code&quot;:&quot;10010&quot;},
            {&quot;country_code&quot;:&quot;US&quot;,&quot;code&quot;:&quot;10111&quot;},
            {&quot;country_code&quot;:&quot;US&quot;,&quot;code&quot;:&quot;10100&quot;}
        ],</code></pre>
class="note note_note">
<b>Note:</b>
<p>For USA, you can target the full 9 digit postal code (also known as
zip +4). For example,</p>
<pre id="postal-code-list-service__pre_th3_tmc_xwb" class="pre"><code>&quot;postal_codes&quot;:[{&quot;country_code&quot;:&quot;US&quot;,&quot;code&quot;:&quot;10010-7456&quot;}],</code></pre>

<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST </code>and <code
class="ph codeph">PUT</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3"><p>Time
of last modification made to the postal code list.</p>
<p>It's a <strong>Read Only</strong> field.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3"><p>Time
of creation of the postal code list.</p>
<p>It's a <strong>Read Only</strong> field.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__1"><code
class="ph codeph">line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="postal-code-list-service__table_lq1_fmc_xwb__entry__3"><p>The
line items that are targeting the postal code list (line items that have
a profile attached to them and that profile is targeting the postal code
list).</p>

It's a <strong>Read Only</strong> field.
<pre id="postal-code-list-service__codeblock_obq_wmc_xwb"
class="pre codeblock"><code>&quot;line_items&quot;:[ 
            {
             &quot;id&quot;  : 1,
             &quot;name&quot;: &quot;LINE_ITEM1&quot;,
             &quot;code&quot;: null
            },
            {
             &quot;id&quot;  : 2,
             &quot;name&quot;: &quot;LINE_ITEM2&quot;,
             &quot;code&quot;: null
            }
         ],</code></pre>
</td>
</tr>
</tbody>
</table>





>

## Examples



**Create a Postal Code List**

``` pre
$ cat postal-code-list-create

{
   "postal-code-lists":[
      {
         "postal_codes":[
            {"id": 1},
            {"id": 2},
            {"id": 3}
         ],
         "name":"My first postal code list"
      },
      {
         "postal_codes": [ 
            {"country_code":"US","code":"10011"},
            {"country_code":"US","code":"10110"},
            {"country_code":"US","code":"11111"}
        ],
         "name":"Another one"
      }
   ]
}

$ curl -b cookies -X POST -d @postal-code-list-create 'https://api.appnexus.com/postal-code-list'
{
    "response": {
        "status": "OK",
        "postal-code-list": {
           "id": 3901,
           "name": "My first postal code list"
           ....
         }
    }
}
```





**Update a Postal Code List**

``` pre
$ cat postal-code-list-update

{
    "postal-code-list": {
        "id": 3901,
        "name": "Modified Postal Code List name",
        "description": "Modified Postal Code List description",
        "postal_codes": [
            {"id": 2}
        ]
    }
}

$ curl -b cookies -X PUT -d @postal-code-list-update 'https://api.appnexus.com/postal-code-list'
{
    "response": {
        "status": "OK",
        "postal-code-list": {
           "id": 3901,
           "name": "modified postal code list name"
           "description": "Updated Description",
           ....
         }
    }
}
```





**Add a new postal code to Postal Code List**

``` pre
$ cat postal-code-list-update

{
    "postal-code-list": {
        "id": 3901,
        "postal_codes": [
            {"id": 9987}
        ]
    }
}

$ curl -b cookies -X PUT -d @postal-code-list-update 'https://api.appnexus.com/postal-code-list&append=true'

{
    "response": {
        "status": "OK",
        "postal-code-list": {
           "id": 3901,
           "postal_codes": [
            {"id": 9987}
        ]
    }
}
```





**Delete a Postal Code List**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/postal-code-list?id=3901'

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

## Related Topics



- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="splits-service.md"
  class="xref" target="_blank">Splits Service</a>








