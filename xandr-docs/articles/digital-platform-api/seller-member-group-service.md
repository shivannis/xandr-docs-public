---
Title : Seller Member Group Service
Description : A seller member group consists of one or more members that sell
ms.date: 10/28/2023
ms.custom: digital-platform-api
inventory. Buyers can target seller member groups in addition to
---


# Seller Member Group Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.



A seller member group consists of one or more members that sell
inventory. Buyers can target seller member groups in addition to
individual members to have to access a greater variety of inventory,
such as that from newer and smaller publishers.

Only admins can write to this service.  



## REST API



<table id="ID-0000399b__table_jym_chs_qwb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000399b__table_jym_chs_qwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-0000399b__table_jym_chs_qwb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000399b__table_jym_chs_qwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__2">https://api.<span
class="ph">appnexus.com/seller-member-group</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__3">View a list of all
seller member groups</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__2">https://api.<span
class="ph">appnexus.com/seller-member-group?id=SELLER_MEMBER_GROUP_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__3">View a specific
seller member group</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__2">https://api.<span
class="ph">appnexus.com/seller-member-group?id=1,2,3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__table_jym_chs_qwb__entry__3">View multiple seller
member groups by ID using a comma-separated list</td>
</tr>
</tbody>
</table>



**Admin-Only Functions**

Only Xandr employees can create, modify, or
delete a seller member group.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000399b__entry__13" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000399b__entry__14"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000399b__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__13"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__14">https://api.<span
class="ph">appnexus.com/seller-member-group
<p>(seller member group JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000399b__entry__15">Add
a new seller member group (admin only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__13"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__14">https://api.<span
class="ph">appnexus.com/seller-member-group?id=SELLER_MEMBER_GROUP_ID
<p>(seller member group JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__15">Modify an existing seller member group
(admin only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__13"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__14">https://api.<span
class="ph">appnexus.com/seller-member-group?id=SELLER_MEMBER_GROUP_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__15">Delete a seller member group (admin
only)</td>
</tr>
</tbody>
</table>





## JSON Fields



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000399b__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000399b__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000399b__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Specifies the internal ID associated
with the seller member group.
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Specifies the name of this seller
member group.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Specifies a description for this seller
member group.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code
class="ph codeph">display_order</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Specifies the order in which this
seller member group should appear in . Default
is <code class="ph codeph">5</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code
class="ph codeph">member_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Specifies the number of members
currently in this seller member group.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__25"><code
class="ph codeph">hidden</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000399b__entry__27">Indicates whether or not this seller
member group should be hidden in .
<ul>
<li><code class="ph codeph">0</code>: (Default) Seller member group will
not be hidden in .</li>
<li><code class="ph codeph">1</code>: Seller member group will be hidden
in .</li>
</ul></td>
</tr>
</tbody>
</table>



## Examples

**View all seller member groups**

``` pre
$ curl -b cookies 'https://api.appnexus.com/seller-member-group'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "seller-member-groups": [
            {
                "id": 1,
                "name": " supply",
                "description": "Xandr seller member group",
                "display_order": 1,
                "hidden": false,
                "last_modified": "2016-03-08 15:30:02",
                "member_count": 103
            }
        ],
        "dbg_info": {
            "instance": "56.bm-hbapi.prod.lax1",
            "slave_hit": false,
            "db": "master",
            "user::reads": 3,
            "user::read_limit": 10000,
            "user::read_limit_seconds": 60,
            "user::writes": 0,
            "user::write_limit": 10000,
            "user::write_limit_seconds": 60,
            "reads": 0,
            "read_limit": 10000,
            "read_limit_seconds": 60,
            "writes": 0,
            "write_limit": 10000,
            "write_limit_seconds": 60,
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 702.83794403076,
            "start_microtime": 1457486117.8624,
            "version": "1.16.479",
            "slave_miss": "no_slaves_found",
            "slave_lag": 7,
            "member_last_modified_age": 1457486117,
            "output_term": "seller-member-groups"
        }
    }
}
```

**Add a seller member group (admins only)**

``` pre
$ cat seller-member-group
{
    "seller-member-group": {
        "name": "My SMG",
        "description": "New seller member group",
        "display_order": 9
    }
}
$ curl -b cookies -X POST -d @seller-member-group 'https://api.appnexus.com/seller-member-group'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 4,
        "start_element": 0,
        "num_elements": 100,
        "seller-member-group": {
            "id": 17,
            "name": "Test SMG",
            "description": "New seller member group",
            "display_order": 9,
            "hidden": false,
            "last_modified": "2016-02-26 23:38:38",
            "member_count": 0
        }
    }
}
```






