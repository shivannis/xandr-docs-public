---
Title : Broker Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
class="note tip note_tip">
<b>Tip:</b>
The Broker service has been replaced by the <a
href="partner-fee-service.md"
---


# Broker Service





class="note tip note_tip">

<b>Tip:</b>

The Broker service has been replaced by the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a> for augmented line
items (ALIs). If you have used broker fees in the past, please consult
the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Partner Fees Breaking Change Notice</a> for details.

The Broker Service can only be used with standard or legacy line items.
Broker fees do not apply to augmented line items.



The Broker Service allows users of standard or legacy line items to
define brokers. Brokers collect fees from networks when serving an
impression. The actual fees are defined through the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>, the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or the <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a>.



class="note caution note_caution">

CAUTION:

If a broker fee is applied to an insertion order, the fee will not apply
to any augmented line items associated with the insertion order. It will
apply only to the insertion order's standard line items.





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
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="http://api.displaywords.com/broker" class="xref"
target="_blank">https://api.appnexus.com/broker</a></p>
<p>(add-broker JSON)</p></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a broker.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="http://api.displaywords.com/broker?id=ID" class="xref"
target="_blank">https://api.appnexus.com/modify-broker?id=BROKER_ID</a></p>
<p>(modify-broker JSON)</p></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
a broker.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="http://api.displaywords.com/broker" class="xref"
target="_blank">https://api.appnexus.com/broker</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all brokers.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="http://api.displaywords.com/broker?id=BROKER_ID" class="xref"
target="_blank">https://api.appnexus.com/broker?id=BROKER_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific broker.</td>
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
class="entry align-left colsep-1 rowsep-1"><strong>Parameter</strong></th>
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
unique identifier for a broker.</p>
<p><strong>Default</strong>: Auto-incremented Number (i.e., 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
unique name used to describe a broker.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the broker. Possible values: <code
class="ph codeph">active</code> or <code
class="ph codeph">inactive</code>.</p>
<p><strong>Default:</strong> <code
class="ph codeph">active</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
unique identification number of the broker's member. When creating a
broker, the member of the user is assigned.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Read-Only.</strong>
Time of last modification to this broker in the format
<strong>YYYY-MM-DD HH:MM:SS</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>An
array of broker fees associated with the broker. Refer to the <a
href="broker-service.md#BrokerService-BrokerFees"
class="xref" target="_blank">Broker Fees</a> section.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>





>

## **Broker Fees Applied to Other Objects**

Broker fees are created through the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>, the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or the <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a>. They can be
viewed here but cannot be created or edited through this service. Refer
to the Broker Fees section in each of the above-referenced services for
details on how to apply fees to brokers.

class="note caution note_caution">

CAUTION:

If a broker fee is applied to an insertion order, the fee will not apply
to any augmented line items associated with the insertion order. It will
apply only to the insertion order's standard line items.



Each object in the `broker_fees` array contains the following fields:

<table id="buy-side-service-template__table_gyr_2wg_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_gyr_2wg_wwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_gyr_2wg_wwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_gyr_2wg_wwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>Indicates
whether this fee is associated to one campaign or a group of campaigns.
Possible values: <code class="ph codeph">campaign</code> or <code
class="ph codeph">campaign-group</code>.</p>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>The
unique identification number of the fee.</p>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>Text
that provides information about the fee.</p>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">fee_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>The
Possible values: <code class="ph codeph">commission</code> or <code
class="ph codeph">serving:</code></p>
<ul>
<li>Commission - These are Line Item or Insertion Order broker fees and
are deducted from the booked revenue given from the advertiser to the
network. Commission is always in the currency of the associated
Insertion Order, Line Item or Campaign.</li>
<li>Serving - These are Campaign broker fees and are in addition to the
inventory cost that the network paid the publisher. Serving fees are in
US Dollars.</li>
</ul>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>Payment
type: <code class="ph codeph">cpm</code> or <code
class="ph codeph">revshare</code>.</p>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_gyr_2wg_wwb__entry__3"><p>The
value of the fee.</p>
<ul>
<li><strong>Read-Only.</strong></li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**Add a broker**

>

``` pre
$ cat add-broker.json

{
    "broker":
    {
    "name": "JMS3"
    }
}

$ curl -b cookies -c cookies -X POST -d @add-broker.json 'https://api.appnexus.com/broker'

    "response":{
        "status":"OK",
        "count":1,
        "id":287,
        "start_element":0,
        "num_elements":100,
        "broker":{
            "id":287,
            "name":"JMS3",
            "state":"active",
            "member_id":1066,
            "last_modified":"2013-09-26 17:17:38",
            "broker_fees":null
```



**Modify a broker**

``` pre
$ cat modify-broker.json

{
    "broker":
    {
    "state": "inactive"
    }
}

$ curl -b cookies -c cookies -X PUT -d @modify-broker.json 'https://api.appnexus.com/broker?id=81'

    "response":{
        "status":"OK",
        "count":1,
        "id":"81",
        "start_element":0,
        "num_elements":100,
        "broker":{
            "id":81,
            "name":"Test",
            "state":"inactive",
            "member_id":1066,
            "last_modified":"2013-09-26 17:21:42",
            "broker_fees":null
        },
}
```



**View all brokers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/broker'

{
    "response":{
        "status":"OK",
        "count":6,
        "start_element":0,
        "num_elements":100,
        "brokers":[
            {
                "id":81,
                "name":"Test",
                "state":"inactive",
                "member_id":1066,
                "last_modified":"2013-09-26 17:21:42",
                "broker_fees":null
            },
            {
                "id":145,
                "name":"Test 2",
                "state":"active",
                "member_id":1066,
                "last_modified":"2013-03-15 20:41:47",
                "broker_fees":null
            },
            {
                "id":152,
                "name":"Test 3",
                "state":"active",
                "member_id":1066,
                "last_modified":"2013-03-20 15:30:21",
                "broker_fees":null
            },
            {
                "id":217,
                "name":"Third party",
                "state":"active",
                "member_id":1066,
                "last_modified":"2013-05-21 03:58:36",
                "broker_fees":null
            },
            {
                "id":218,
                "name":"Third party",
                "state":"active",
                "member_id":1066,
                "last_modified":"2013-05-21 04:12:58",
                "broker_fees":null
            },
            {
                "id":287,
                "name":"JMS3",
                "state":"active",
                "member_id":1066,
                "last_modified":"2013-09-26 17:17:38",
                "broker_fees":null
            }
        ],
}
```



**View a specific broker**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/broker?id=81'

{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,        "num_elements":100,
        "broker":{
            "id":81,
            "name":"Test",
            "state":"inactive",
            "member_id":1066,
            "last_modified":"2013-09-26 17:21:42",
            "broker_fees":null
        },
}
```






