---
Title : Mediated Network Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b> Only available to Monetize Ad
Server customers.
---


# Mediated Network Service







<b>Note:</b> Only available to Monetize Ad
Server customers.





This service is used to create and maintain mediated networks.

Use this service to define your integration with an external network.

>

## REST API



<table id="mediated-network-service__table_vmy_kkl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediated-network-service__table_vmy_kkl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="mediated-network-service__table_vmy_kkl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="mediated-network-service__table_vmy_kkl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network" class="xref"
target="_blank">https://api.appnexus.com/mediated-network</a> (+ JSON
payload)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">Add a
new mediated network</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network?id=ID" class="xref"
target="_blank">https://api.appnexus.com/mediated-network?id=ID</a> (+
JSON payload)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">Modify a
mediated network</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network" class="xref"
target="_blank">https://api.appnexus.com/mediated-network</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">View all
mediated networks</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network?id=ID" class="xref"
target="_blank">https://api.appnexus.com/mediated-network?id=ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">View a
specific mediated network</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network?id=ID" class="xref"
target="_blank">https://api.appnexus.com/mediated-network?id=ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">Delete a
mediated network</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__2"><a
href="https://api.appnexus.com/mediated-network/meta" class="xref"
target="_blank">https://api.appnexus.com/mediated-network/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_vmy_kkl_twb__entry__3">Find out
which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table id="mediated-network-service__table_ewr_4kl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediated-network-service__table_ewr_4kl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="mediated-network-service__table_ewr_4kl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mediated-network-service__table_ewr_4kl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>The
system-generated unique ID for this network.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph"> name </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>The
name of the network, as supplied by the user.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">credentials</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><strong>Read-only.</strong>
A system-generated unique value that securely identifies the network.
Credentials are encrypted after a <code class="ph codeph">POST</code> or
<code class="ph codeph">PUT</code> and cannot be decrypted.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><strong>Read-only.</strong>
The unique, system-generated ID of the advertiser associated with this
mediated network.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><strong>Read-only.</strong>
Every advertiser object in our system is associated with a parent <a
href="member-service.md"
class="xref" target="_blank">member</a>. The unique, system-generated ID
of the member to which the advertiser described by <code
class="ph codeph">advertiser_id</code> belongs. (And by extension, this
mediated network as well.)</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>Active
mediation networks target and purchase media in auctions.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">is_data_integration_active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>Whether
reporting data is currently being pulled from this network's systems
into ours.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph"> creative_custom_request_partner_id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>The
<em>Creative Custom Request Partner</em> this mediated network is
associated with.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">default_bid_currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>The
currency to be used for bids from this network.</p>
<p><strong>Default:</strong> <code class="ph codeph">USD</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">processed_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><strong>Read-only.</strong>
The date and time at which this mediated network's associated line item
was updated with metrics (revenue, imps, clicks) pulled from the
external network's reporting system.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><strong>Read-only.</strong>
The date and time at which the mediated network object was last
modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__1"><code
class="ph codeph">network_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediated-network-service__table_ewr_4kl_twb__entry__3"><p>The
type of mediated network this is. Allowed values:</p>
<ul>
<li><code class="ph codeph">mobile</code>: This network is focused on
purchasing mobile (in-app?) inventory.</li>
<li><code class="ph codeph">banner</code>: This network is focused on
purchasing web inventory.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">mobile</code></p></td>
</tr>
</tbody>
</table>





>

## Examples



**Add a mediated network**

``` pre
$ cat add-network
{
    "mediated-network": {
        "name": "JMS Test 2",
        "creative_custom_request_partner_id": 1
    }
} 

$ curl -b cookies -c cookies -X POST -d @add-network.json 'https://api.appnexus.com/mediated-network

{
    "response":{
        "status":"OK",
        "count":1,
        "id":371,
        "start_element":0,
        "num_elements":100,
        "mediated-network":{
            "id":371,
            "name":"JMS Test 2",
            "credentials":null,
            "advertiser_id":110692,
            "member_id":4209,
            "active":true,
            "is_data_integration_active":false,
            "creative_custom_request_partner_id":1,
            "default_bid_currency": "USD",
            "processed_on":"1970-01-01 00:00:01",
            "last_modified":"2014-04-28 14:59:11",
            "bid_count":0,
            "network_type":"mobile"
        }
    }
}
```





**Update a mediated network**

``` pre
$ cat add-network

{
    "mediated-network": {
        "id": 368,
      "active": false   
    }
}

$ curl -b cookies -c cookies -X PUT -d @update-network.json 'https://sand.api.appnexus.com/mediated-network?member_id=4209' | json-pp

{
    "response":{
        "status":"OK",
        "count":1,
        "id":368,
        "start_element":0,
        "num_elements":100,
        "mediated-network":{
            "id":368,
            "name":"Integration Test TEST1398457680380",
            "credentials":"OlkWxzZaQjVpgMRd\/\/o6cbUgjuNYkrP\/toKzFRdR9gnpQ2upKNhDu5mQrr871RCjBbjsNlyO6hN2fVNg4VV
             LiMix2mrky38F\/M30uEIVo0zQzmVJ8K4Uz0UyLVagVwdsgNPx9sAN0LZD+ZskyXQx6R4dZCjQD9mKHLT+nJ2Usfs=",
            "advertiser_id":110648,
            "member_id":4209,
            "active":false,
            "is_data_integration_active":false,
            "creative_custom_request_partner_id":1,
            "default_bid_currency": "USD",
            "processed_on":"1970-01-01 00:00:01",
            "last_modified":"2014-04-28 14:56:48",
            "bid_count":0,
            "network_type":"mobile"
        }
    }
}
```





**View all mediated networks**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/mediated-network

{
    "response":{
        "status":"OK",
        "count":20,
        "start_element":0,
        "num_elements":100,
        "mediated-networks":[
            {
                "id":89,
                "name":"Doubleclick for Publishers",
                "credentials":null,
                "advertiser_id":110021,
                "member_id":4209,
                "active":false,
                "is_data_integration_active":false,
                "creative_custom_request_partner_id":28,
                "default_bid_currency": "USD",
                "processed_on":"1970-01-01 00:00:01",
                "last_modified":"2014-04-18 23:37:01",
                "bid_count":0,
                "network_type":"mobile"
            },
            {
                "id":90,
                "name":"Tim's Custom Network",
                "credentials":null,
                "advertiser_id":110022,
                "member_id":4209,
                "active":false,
                "is_data_integration_active":false,
                "creative_custom_request_partner_id":22,
                "default_bid_currency": "EUR",
                "processed_on":"1970-01-01 00:00:01",
                "last_modified":"2014-04-18 23:37:01",
                "bid_count":0,
                "network_type":"mobile"
            },
            {
                "id":210,
                "name":"Amazon",
                "credentials":null,
                "advertiser_id":110203,
                "member_id":4209,
                "active":false,
                "is_data_integration_active":false,
                "creative_custom_request_partner_id":25,
                "default_bid_currency": "EUR",
                "processed_on":"1970-01-01 00:00:01",
                "last_modified":"2014-04-18 23:32:36",
                "bid_count":1,
                "network_type":"mobile"
            }
      ]
  }
}
```





**View a specific mediated network**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/mediated-network?id=368' | json-pp

{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "mediated-network":{
            "id":368,
            "name":"Integration Test TEST1398457680380",
            "credentials":"OlkWxzZaQjVpgMRd\/\/o6cbUgjuNYkrP\/toKzFRdR9gnpQ2upKNhDu5mQrr871RCjBbjsNlyO6hN2fVNg4VVL
             iMix2mrky38F\/M30uEIVo0zQzmVJ8K4Uz0UyLVagVwdsgNPx9sAN0LZD+ZskyXQx6R4dZCjQD9mKHLT+nJ2Usfs=",
            "advertiser_id":110648,
            "member_id":4209,
            "active":true,
            "is_data_integration_active":false,
            "creative_custom_request_partner_id":1,
            "default_bid_currency": "USD",
            "processed_on":"1970-01-01 00:00:01",
            "last_modified":"2014-04-25 20:28:07",
            "bid_count":0,
            "network_type":"mobile"
        }
    }
}
```





**Delete a mediated network**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/mediated-network?id=371

{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null
    }
}
```





>

## Related Topics



- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="mediated-bid-service.md"
  class="xref" target="_blank">Mediated Bid Service</a>








