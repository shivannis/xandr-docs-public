---
Title : Buyer Group Service
Description : You can create groups of buyers in order to apply similar yield
ms.date: 10/28/2023
ms.custom: digital-platform-api
management settings to them as a whole.
---


# Buyer Group Service



You can create groups of buyers in order to apply similar yield
management settings to them as a whole.



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="buyer-group-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="buyer-group-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="buyer-group-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__2"><a
href="https://api.appnexus.com/buyer-group?id=ID" class="xref"
target="_blank">https://api.appnexus.com/buyer-group?id=ID</a>
<p>(edit-group-member JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__3">Update an existing buyer
group</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__2"><a
href="https://api.appnexus.com/buyer-group?id=ID" class="xref"
target="_blank">https://api.appnexus.com/buyer-group?id=ID</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__3">View a specific buyer group</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__2"><a
href="https://api.appnexus.com/buyer-group" class="xref"
target="_blank">https://api.appnexus.com/buyer-group</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__3">View all buyer groups</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__2"><a
href="https://api.appneuxs.com/buyer-group" class="xref"
target="_blank">https://api.appneuxs.com/buyer-group</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__3">Add a buyer group</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__2"><a
href="https://api.appnexus.com/buyer-group/meta" class="xref"
target="_blank">https://api.appnexus.com/buyer-group/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__3">Find out which fields you can
filter and sort by</td>
</tr>
</tbody>
</table>



<b>Note:</b> This service does not allow the
user to add or delete members to or from a group. You must create a JSON
file containing all members that should be in the list and execute a
`PUT` call. Members that are not in the JSON file are added, while
members that are not in the JSON are excluded.







## JSON Fields



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="buyer-group-service__entry__19"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th id="buyer-group-service__entry__20"
class="entry align-center colsep-1 rowsep-1">Type (Length)</th>
<th id="buyer-group-service__entry__21"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">The identification number of
the buyer group.
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required on</strong>: <code class="ph codeph">PUT</code> or
<code class="ph codeph">DELETE</code> in query string</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">string (100)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">Allows clients to use AppNexus
systems while referring to their own unique object ID values.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">string (100)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">The name of the buyer group.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">string (100)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">Text that describes the buyer
group.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">datetime</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">The date and time that the
buyer group was last updated.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__19"><code
class="ph codeph">buyer_members</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__20">array of objects</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="buyer-group-service__entry__21">This list of members that
belong to that buyer group. Refer to the <a
href="buyer-group-service.md#buyer-group-service__Buyer_Members"
class="xref">Buyer Members</a> section.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



**Buyer Members**



The `buyer_members` array contains all members that belong to the group.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="buyer-group-service__entry__40"
class="entry colsep-1 rowsep-1">Field</th>
<th id="buyer-group-service__entry__41"
class="entry colsep-1 rowsep-1">Type (Length)</th>
<th id="buyer-group-service__entry__42"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-group-service__entry__40"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-group-service__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-group-service__entry__42">The identification number of a
member in the group.</td>
</tr>
</tbody>
</table>







## Examples

**Update members in a list**



``` pre
$ cat edit-group-member

{
 "buyer-group":{

            "buyer_members":[
                {   "id":2175},
                {   "id":2176},
                {   "id":2177},
                {   "id":2179}
            ]
        }
}

$ curl -b cookies -c cookies -X PUT -d @edit-group-member.json 'https://api.appnexus.com/buyer-group?id=237'

{
    "response":{
        "status":"OK",
        "dbg_info":{
            ...
        }
    }
}
```



**View a specific buyer group**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/buyer-group?id=237'

{
    "response":{
        "status":"OK",
        "buyer-group":{
            "id":237,
            "code":null,
            "name":"Positive Bias Group",
            "description":null,
            "last_modified":"2012-11-22 22:15:37",
            "buyer_members":[
                {
                    "id":2175
                },
                {
                    "id":2176
                },
                {
                    "id":2177
                },
                {
                    "id":2179
                }
            ]
        },
        "dbg_info":{
            ...
        }
    }
}
```



**View all buyer groups**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/buyer-group'

{
    "response":{
        "status":"OK",
        "buyer-groups":[
            {
                "id":41,
                "code":"TPANs",
                "name":"Third Party Ad Networks",
                "description":null,
                "last_modified":"2011-02-07 01:15:19",
                "buyer_members":[
                    {
                        "id":771
                    },
                    {
                        "id":772
                    }
                ]
            },
            {
                "id":50,
                "code":null,
                "name":"Test Buyer Group #1",
                "description":null,
                "last_modified":"2011-02-07 21:07:56",
                "buyer_members":[
                    {
                        "id":273
                    },
                    {
                        "id":405
                    },
                    {
                        "id":650
                    },
                    {
                        "id":681
                    }
                ]
            },
            {
                "id":51,
                "code":null,
                "name":"Buyer Group #2",
                "description":null,
                "last_modified":"2011-02-07 21:11:47",
                "buyer_members":[
                    {
                        "id":273
                    },
                    {
                        "id":324
                    },
                    {
                        "id":405
                    }
                ]
            },
            {
                "id":52,
                "code":null,
                "name":"Buyer Group #3",
                "description":null,
                "last_modified":"2011-02-07 21:11:53",
                "buyer_members":[
                    {
                        "id":324
                    },
                    {
                        "id":654
                    }
                ]
            },
        ],
        "count":79,
        "start_element":null,
        "num_elements":null,
        "dbg_info":{
            ...
        }
    }
}
```





**Create a buyer group**

``` pre
$ cat add-buyer-group

{    
    "buyer-group":
    {   "name": "JMSTest"   }
} 


$ curl -b cookies -c cookies -X POST -d @add-buyer-group.json 'https://api.appnexus.com/buyer-group?member_id=126'

{
    "response":{
        "status":"OK",
        "id":253,
        "dbg_info":{
            ...
        }
    }
```







## Related topics

- <a href="yield-management-profile-service.md" class="xref">Yield
  Management Profile Service</a>
- <a href="yield-management-floor-service.md" class="xref">Yield
  Management Floor Service</a>






