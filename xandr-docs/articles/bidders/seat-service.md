---
Title : Seat Service
Description : Note: This feature is currently in
Closed Beta. If you are interested in participating, please reach out to
---


# Seat Service





Note: This feature is currently in
Closed Beta. If you are interested in participating, please reach out to
your Xandr representative.



The Buyer Seat ID product allows for external Bidders to bid with their
custom buyer IDs rather than using Xandr member
IDs. This allows external bidders to utilize buyer IDs from their own
systems when bidding on Xandr inventory and will
allow for more seamless reporting and deal set up. 

The seat service is a brand new API service used to register new seats
for a bidder. This can be done manually through post calls to the API or
done in real time when a bidder bids with a new seat id in the bid
response.



## Summary

Seat Service is used to store a bidder's seat IDs. These seat IDs will
be used in the bid response and logged in transaction reporting.





## Rest API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000262f__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000262f__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000262f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/seat/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__3">To
see all of your seats attached to your bidder</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat/BIDDER_ID/SEAT_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/seat/BIDDER_ID/SEAT_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__3">To
see an existing seat using API seat identifier</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat?bidder_id=BIDDER_ID&amp;code=SEATCODE"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/seat?bidder_id=BIDDER_ID&amp;code=SEATCODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__3">To
see an existing seat using API bidder seat id</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/seat/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__3">Add
a new seat</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat/BIDDER_ID/SEAT_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/seat/BIDDER_ID/SEAT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__3">Modify an existing seat using API seat
identifier</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__2"><a
href="https://api.adnxs.com/seat?bidder_id=BIDDER_ID&amp;co6de=SEATCODE"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/seat?bidder_id=BIDDER_ID&amp;co6de=SEATCODE</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__3">Modify an existing seat using bidder
seat id</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000262f__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000262f__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000262f__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__22"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__24">The
ID of the bidder. This is a read-only field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__24">Bidder seat id.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000262f__entry__24">The
ID of the seat. This is a read-only field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000262f__entry__24">Name of the buyer for this seat.
<figure id="ID-0000262f__fig_syq_lwh_nwb" class="fig fignone">

Note: In auto registered seats, the
standard naming convention will be <em>seat_code (bidder name)</em>

</figure></td>
</tr>
</tbody>
</table>



<div id="ID-0000262f__section_xwq_2xh_nwb" >

## Examples

The below example API calls show how you can upload new seats or edit
existing seats: 

**Uploading a New Seat**

``` pre
$ cat seats.json
 
{
 
    "seats": [{
            "bidder_id": 1,
            "code": "sdfg54VVsh",
            "name": "sdfg54VVsh(Bidder)"
        },
        {
            "bidder_id": 129,
            "code": "54Gfa762Gbse",
            "name": "54Gfa762Gbse(Bidder)"
        }
    ]
}
 
$ curl -b cookies -c cookies -X POST -d @seats.json "https://api.adnxs.com/seat/1"
 {
    "response": {
        "status": "OK",
        "num_elements": 100,
        "seats": [
            {
                "bidder_id": 1,
                "code": "sdfg54VVsh",
                "created_on": "2018-12-13 15:31:13",
                "id": 11,
                "last_activity": "2018-12-13 15:31:13",
                "name": "sdfg54VVsh(Bidder)"
            },
            {
                "bidder_id": 1,
                "code": "54Gfa762Gbse",
                "created_on": "2018-12-13 17:09:26",
                "id": 22,
                "last_activity": "2018-12-13 17:09:26",
                "name": "54Gfa762Gbse(Bidder)"
            }
        ]
    }
}
```

**Updating an existing seat - change the seat name**

``` pre
$ cat seats.json
 
{
 
    "seats": [{
            "bidder_id": 1,
            "code": "sdfg54VVsh",
            "name": "Bidder seat name"
        }
    ]
}
 
$ curl -b cookies -c cookies -X PUT -d @seats.json "https://api.adnxs.com/seat/1/11"
 {
    "response": {
        "status": "OK",
        "num_elements": 100,
        "seats": [
            {
                "bidder_id": 1,
                "code": "sdfg54VVsh",
                "created_on": "2018-12-13 15:31:13",
                "id": 11,
                "last_activity": "2018-12-13 15:31:13",
                "name": "Bidder seat name"
            }
        ]
    }
}
```

**See an existing seat**

``` pre
$ curl -b cookies -c cookies -X GET "https://api.adnxs.com/seat/1/22"
 {
    "response": {
        "status": "OK",
        "num_elements": 100,
        "seats": [
            {
                "bidder_id": 1,
                "code": "54Gfa762Gbse",
                "created_on": "2018-12-13 17:09:26",
                "id": 22,
                "last_activity": "2018-12-13 17:09:26",
                "name": "54Gfa762Gbse(Bidder)"
            }
        ]
    }
}
```

**See all seats for a specific bidder**

``` pre
$ curl -b cookies -c cookies -X GET "https://api.adnxs.com/seat/1"
 {
    "response": {
        "status": "OK",
        "num_elements": 100,
        "seats": [
            {
                "bidder_id": 1,
                "code": "sdfg54VVsh",
                "created_on": "2018-12-13 15:31:13",
                "id": 11,
                "last_activity": "2018-12-13 15:31:13",
                "name": "sdfg54VVsh(Bidder)"
            },
            {
                "bidder_id": 1,
                "code": "54Gfa762Gbse",
                "created_on": "2018-12-13 17:09:26",
                "id": 22,
                "last_activity": "2018-12-13 17:09:26",
                "name": "54Gfa762Gbse(Bidder)"
            }
        ]
    }
}
```



<div id="ID-0000262f__section_pbb_3xh_nwb" >

## Related Topics

- <a href="bidder-service.html" class="xref">Bidder Service</a>
- <a href="creative-service.html" class="xref">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
  class="xref" target="_blank">Bid Response from Bidders</a>






