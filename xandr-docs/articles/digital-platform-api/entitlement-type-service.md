---
Title : Entitlement Type Service
Description : The **entitlement-type** service allows you to define a code that will
ms.date: 10/28/2023
ms.custom: digital-platform-api
be assigned to members through the <a
href="member-service.md"
---


# Entitlement Type Service



The **entitlement-type** service allows you to define a code that will
be assigned to members through the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>. This code is used to
provide certain features for only specific members. For example, we
might have members who are allowed to do keyword targeting or deal
discovery. After using this service to create entitlement types, you can
assign one or more entitlement types to a member.



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002363__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002363__entry__2"
class="entry colsep-1 rowsep-1">Enpoints</th>
<th id="ID-00002363__entry__3"
class="entry colsep-1 rowsep-1">Descriptions</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__2">https://api.<span
class="ph">appnexus.com/entitlement-type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__3"><p>View all entitlement types</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__2">https://api.<span
class="ph">appnexus.com/entitlement-type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__3"><br />
Create an entitlement type</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__2">https://api.<span
class="ph">appnexus.com/entitlement-type?id=ENTITLEMENT_TYPE_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__3">Modify an entitlement type</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__2">https://api.<span
class="ph">appnexus.com/entitlement-type?id=ENTITLEMENT_TYPE_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__3">Delete an entitlement type</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002363__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002363__entry__17" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002363__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002363__entry__18">The
ID of the entitlement type. This value is auto-generated on <code
class="ph codeph">POST</code>.
<p><strong>Default:</strong> Auto-generated number.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__16">code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002363__entry__18">The
code associated with the entitlement. This value is set by the engineer
and should be provided by them.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__16"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__17">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002363__entry__18">A
description of the entitlement. This value is optional and has no effect
on the actual entitlement. Description is the only field that can be
modified after the entitlement type has been created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__16"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__17">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002363__entry__18">The
date and time the entitlement was created.
<p><strong>Default:</strong> Auto-generated on creation.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__16"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002363__entry__17">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002363__entry__18">The
date and time the entitlement was last modified.
<p><strong>Default:</strong> Auto-generated at each
modification.</p></td>
</tr>
</tbody>
</table>





##  Examples

**View all entitlement types**

``` pre
$ curl -b cookies 'https://api.appnexus.com/entitlement-type'
{
    "response": {
        "status": "OK",
        "count": 4,
        "start_element": 0,
        "num_elements": 100,
        "entitlement-types": [
            {
                "id": 1,
                "code": "seller_external_uid",
                "description": "Boolean, when true allows external uid mapping for a seller",
                "last_activity": "2016-10-12 15:39:28",
                "created_on": "2016-10-12 15:39:28"
            },
            {
                "id": 2,
                "code": "seller_deal_discovery",
                "description": "Boolean, when true allows deal discovery for a seller",
                "last_activity": "2016-10-13 16:43:51",
                "created_on": "2016-10-13 16:43:51"
            },
            {
                "id": 3,
                "code": "seller_keyword_targeting",
                "description": "Boolean, when true allows keyword targeting for a seller",
                "last_activity": "2016-10-13 16:43:51",
                "created_on": "2016-10-13 16:43:51"
            },
            {
                "id": 4,
                "code": "seller_keyword_segment_targeting",
                "description": "Boolean, when true allows keyword-based segment targeting for a seller",
                "last_activity": "2016-10-13 16:43:51",
                "created_on": "2016-10-13 16:43:51"
            }
        ],
...
}
```



**Create an entitlement type**

``` pre
$cat entitlement_type.json
{
    "entitlement-type": {
        "code": "test_entitlement_code",
        "description": "testing entitlement type"
    }
}
```



``` pre
$ curl -b cookies -X POST -d @entitlement_type.json 'https://api.appnexus.com/entitlement-type'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1,
        "start_element": 0,
        "num_elements": 100,
        "entitlement-type": {
            "id": 1,
            "code": "test_entitlement_code",
            "description": "testing entitlement type",
            "last_activity": "2016-12-02 16:47:47",
            "created_on": "2016-12-02 16:47:47"
        }, ...
}
```



**Modify an entitlement type**

``` pre
 $cat entitlement_type_update.json

{
    "entitlement-type": {
        "description": "entitlement type for testing"
    }
}
```



``` pre
$ curl -b cookies -X POST -d @entitlement_type_update.json 'https://api.appnexus.com/entitlement-type?id=1'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1,
        "start_element": 0,
        "num_elements": 100,
        "entitlement-type": {
            "id": 1,
            "code": "test_entitlement_code",
            "description": "entitlement type for testing",
            "last_activity": "2016-12-02 16:56:48",
            "created_on": "2016-12-02 16:47:47"
        }, ...
}
```





##  Related Topics

- <a
  href="member-service.md"
  class="xref" target="_blank">Member Service</a>  
    






