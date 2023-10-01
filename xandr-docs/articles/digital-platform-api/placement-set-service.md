---
Title : Placement Set Service
Description : The Placement Set Service supports the creation and management of ad
pods, linear groupings of ads designed to fit within a single video
placement.
---


# Placement Set Service



The Placement Set Service supports the creation and management of ad
pods, linear groupings of ads designed to fit within a single video
placement.

<div id="placement-set-service__section_k4z_n42_twb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-set-service__section_k4z_n42_twb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="placement-set-service__section_k4z_n42_twb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="placement-set-service__section_k4z_n42_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__2"><a
href="https://api.appnexus.com/placement-set?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement-set?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__3">View all
of the placement sets for one of your publishers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__2"><a
href="https://api.appnexus.com/placement-set?id=PLACEMENT_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement-set?id=PLACEMENT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__3">View a
specific placement set for one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__2"><a
href="https://api.appnexus.com/placement-set?publisher_id=PUBLISHER_ID&amp;member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement-set?publisher_id=PUBLISHER_ID&amp;member_id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__3">Add a
placement set (NETWORK).
<div id="placement-set-service__note_d5d_bp2_twb"
class="note note_note">
Note: All ad pod placements associated
with a placement group must belong to placement group's publisher.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__2"><a
href="https://api.appnexus.com/placement-set?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID&amp;member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement-set?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID&amp;member_id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_k4z_n42_twb__entry__3">Modify an
existing placement set (NETWORK).</td>
</tr>
</tbody>
</table>



<div id="placement-set-service__section_wq4_dp2_twb"
>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-set-service__section_wq4_dp2_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="placement-set-service__section_wq4_dp2_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="placement-set-service__section_wq4_dp2_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The
code associated with the placement set.</p>
<strong>Default</strong>: <code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The ID
of the placement set.</p>
<strong>Required On</strong>: PUT</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The
time stamp when activity was last performed on the placement set.</p>
<strong>Default</strong>: <code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The ID
of the member associated with the publisher.</p>
<strong>Required On:</strong> POST</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The
name for the placement set. The user would use this to identify their
placement set.</p>
<strong>Default</strong>: <code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">placement_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">array of
ints</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The
placements that are associated with the placement set.</p>
<strong>Default</strong>: <code class="ph codeph">null</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-set-service__section_wq4_dp2_twb__entry__3"><p>The ID
of the publisher associated with the placement set.</p>
<strong>Required On:</strong> POST</td>
</tr>
</tbody>
</table>



<div id="placement-set-service__section_esj_jq2_twb"
>

## Examples

**Create a new placement set**

``` pre
$ cat ps_create

{
    "placement_set":{
        "code":"appnexus_example2",
        "name":"placement set test",
        "member_id":958,
        "publisher_id":123456,
        "placement_ids":[01234567, 12345678]
    }
}
$ curl -b cookies -c cookies -X POST -d @ps_create 'https://api.appnexus.com/placement-set?member_id=958&publisher_id=123456' 
```

**Update an existing placement set**

``` pre
$ cat ps_change
{
    "placement_set":{
        "id":2,
        "name":"new placement set name",
        "placement_ids":[01234567, 12345678]
    }
}

$ curl -b cookies -c cookies -X PUT -d @ps_change 'https://api.appnexus.com/placement-set?id=2&member_id=958&publisher_id=123456'
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "placement_set": {
            "id": 2,
            "name": "new placement set name",
            "code": "appnexus_example2",
            "member_id": 958,
            "publisher_id": 123456,
            "last_activity": "2017-05-01 03:06:51",
            "placement_ids": [
                "01234567",
                "12345678"
            ]
        },
        "count": 1
        }
    }
}
```

**View an existing placement set**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/placement-set?publisher_id=123456'
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "placement_sets": [
            {
                "id": 1,
                "name": "my first test",
                "code": "appnexus_example",
                "member_id": 958,
                "publisher_id": 123456,
                "last_activity": "2017-05-01 02:52:09",
                "placement_ids": null
            },
            {
                "id": 2,
                "name": "placement set test",
                "code": "appnexus_example2",
                "member_id": 958,
                "publisher_id": 123456,
                "last_activity": "2017-05-01 02:55:11",
                "placement_ids": [
                    "01234567",
                    "12345678"
                ]
            }
        ],
        "count": 2
        ...
        }
    }
}
```






