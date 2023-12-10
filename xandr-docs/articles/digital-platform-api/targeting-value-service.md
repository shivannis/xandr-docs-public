---
Title : Targeting Value Service
Description : The targeting-value service works in conjunction with the targeting-key
ms.date: 10/28/2023
ms.custom: digital-platform-api
service to allow you to create your own key/value combinations for use
in targeting on line items, campaigns, and so on. (See <a
---


# Targeting Value Service



The targeting-value service works in conjunction with the targeting-key
service to allow you to create your own key/value combinations for use
in targeting on line items, campaigns, and so on. (See <a
href="custom-key-value-targeting.md"
class="xref" target="_blank">Custom Key Value Targeting</a> for more
information.)

>

## **REST API**



>



<table
id="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all">
<thead class="thead">
<tr class="header row">
<th
id="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th
id="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th
id="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all targeting values for a specific key</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID&amp;id=TARGETING_VALUE_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID&amp;id=TARGETING_VALUE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific targeting value</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new targeting value</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?targeting_key_id=TARGETING_KEY_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
multiple new targeting values</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?id=TARGETING_VALUE_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?id=TARGETING_VALUE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
a targeting value</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/targeting-value?id=TARGETING_VALUE_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-value?id=TARGETING_VALUE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="targeting-value-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a targeting value</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="targeting-value-service__section_sxm_2dr_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="targeting-value-service__section_sxm_2dr_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="targeting-value-service__section_sxm_2dr_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3"><strong>Read-only.</strong>
The date and time the targeting value was created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3"><p>The
ID of the targeting value.</p>
<ul>
<li><strong>Required On</strong>: PUT and DELETE</li>
<li><strong>Default</strong>: auto-generated number.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">label</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3">A label
for the value, used for reporting purposes. This value is not required,
but if you supply a value it must be unique within the a key. Labels can
be a maximum of 190 characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3"><strong>Read-only.</strong>
The date and time the targeting value was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3">The
name of the targeting value. This name must be unique within a given
targeting key.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__1"><code
class="ph codeph">targeting_key_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__section_sxm_2dr_swb__entry__3"><p>The
ID of the associated targeting key. The targeting key must exist before
a value can be created. (See Targeting Key Service.)</p>
<ul>
<li><strong>Required On</strong>: POST and GET</li>
</ul></td>
</tr>
</tbody>
</table>





>

## Value Requirements



<table id="targeting-value-service__table_xnf_5fs_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="targeting-value-service__table_xnf_5fs_swb__entry__1"
class="entry align-justify colsep-1 rowsep-1">Value Requirements</th>
<th id="targeting-value-service__table_xnf_5fs_swb__entry__2"
class="entry colsep-1 rowsep-1">Details</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="targeting-value-service__table_xnf_5fs_swb__entry__1"><ul>
<li>
You can have up to 100,000 values per key.
class="note note_note">
<b>Note:</b> The maximum limit for number of
values to include in one payload is 100.

</li>
<li>You can have up to 2,500,000 total active values at one time.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-value-service__table_xnf_5fs_swb__entry__2"><ul>
<li>Value names are not case-sensitive.</li>
<li>Maximum value name length is 100 characters.</li>
<li>Value names may contain whitespace, so they can be more than one
word.</li>
<li>Value names cannot contain any of the following special characters:
<ul>
<li>" (double quotes)</li>
<li>' (apostrophe)</li>
<li>= (equal sign)</li>
<li>! (exclamation point)</li>
<li>+ (plus sign)</li>
<li># (hashtag)</li>
<li>* (asterisk)</li>
<li>~ (tilde)</li>
<li>; (semicolon)</li>
<li>^ (caret)</li>
<li>() (parentheses)</li>
<li>&lt; &gt; (angle brackets)</li>
<li>[ ] (square brackets)</li>
<li>, (comma)</li>
<li>&amp; (ampersand)</li>
<li><p>@ (at)</p></li>
<li>: (colon)</li>
<li>? (question mark)</li>
<li>% (percent)</li>
<li>/ (forward slash)</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>





>

## Examples



**View all targeting values for a given key**

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-values?targeting_key_id=12'
 
"targeting-values": [
    {
        "id": 1,
        "targeting_key_id": 12,
        "name": "value1",
        "label": null,
        "created_on": "2016-08-26 08:52:43",
        "last_modified": "2016-08-26 08:52:43"
    },
    {
        "id": 4,
        "targeting_key_id": 12,
        "name": "value2",
        "label": null,
        "created_on": "2016-08-26 09:24:33",
        "last_modified": "2016-08-26 09:24:33"
    }
],...
```





**View a specific targeting value**

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-value?id=4'
  
"targeting-value": {
    "id": 4,
    "targeting_key_id": 12,
    "name": "value2",
    "label": null,
    "created_on": "2016-08-26 09:24:33",
    "last_modified": "2016-08-26 09:24:33"
},
```





**Add a targeting value (string)**

``` pre
$ cat create_targeting_value.json
 
{
    "targeting-value": {
        "name": "value1"
    }
}
  
$ curl -b cookies -X POST -d @create_targeting_value.json 'https://api.appnexus.com/targeting-value?targeting_key_id=12'
```





**Add multiple targeting values (string)**

``` pre
$ cat create_multi_targeting_value.json
 
{
    "targeting-values": [
        {
            "name": "value1"
        },
        {
            "name": "value2"
        }
    ]
}
  
$ curl -b cookies -X POST -d @create_multi_targeting_value.json 'https://api.appnexus.com/targeting-value?targeting_key_id=12'
```

**Add a targeting value (numeric)**





The **name** field requires a string value (enclosed in quotes).
However, if the key has been defined with a **type** of numeric, that
string must contain numeric characters.

``` pre
$ cat create_targeting_value.json
 
{
    "targeting-value": {
        "name": "22"
    }
}
  
$ curl -b cookies -X POST -d @create_targeting_value.json 'https://api.appnexus.com/targeting-value?targeting_key_id=12'
```





**Modify a targeting value**

``` pre
$ cat update_targeting_value.json
 
{
"targeting-value":
    {
        "name": "newvalue2"
         
    }
}
  
$ curl -b cookies -X PUT -d @update_targeting_value.json 'https://api.appnexus.com/targeting-value?id=4'
```



**Sort by value name**



You can sort your results by **id**, **name**, **label**,
**created_on**, or **last_modified**. You can sort in ascending
(**asc**) or descending (**desc**) order.

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-value?targeting_key_id=4&sort=name.asc'
  
"targeting-values": [
    {
        "id": 10,
        "targeting_key_id": 12,
        "name": "a test value",
        "label": null,
        "created_on": "2016-08-26 08:52:43",
        "last_modified": "2016-08-26 08:52:43"
    },
    {
        "id": 7,
        "targeting_key_id": 12,
        "name": "test value",
        "label": null,
        "created_on": "2016-08-26 09:24:33",
        "last_modified": "2016-08-26 09:24:33"
    }
],...
```





**Delete a targeting value**

``` pre
$ curl -b cookies -X DELETE 'https://api.appnexus.com/targeting-value?id=4'
```





>

## Related Topics



- <a
  href="targeting-key-service.md"
  class="xref" target="_blank">Targeting Key Service</a>
- <a
  href="custom-key-value-targeting.md"
  class="xref" target="_blank">Custom Key Value Targeting</a>








