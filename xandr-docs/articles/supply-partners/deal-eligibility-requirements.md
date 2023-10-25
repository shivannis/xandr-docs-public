---
Title : Deal Eligibility Requirements
Description : lorem ipsum
---


# Deal Eligibility Requirements



To demonstrate that you understand the
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a>, you'll create deals with
two Xandr test members, AN Talent(882) and AN
Challenge(1370). The deal must represent the same inventory, and
therefore should always appear on the same bid requests. Each deal must
see over 10,000 impressions per day.



## Step 1. Set up a deal with buyer member AN Talent (882). 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__2" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000844__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__4" class="entry colsep-1 rowsep-1">Expected
Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
custom code for the deal.

Note: This field is mandatory and
represents your internal deal ID, passed in the <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
class="xref" target="_blank">incoming bid request</a> through the deal
ID field in the PMP object.
</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00000844__entry__4">Value that you will be passing in PMP's
object, deal ID field</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">nacme</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
name of the deal.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__4">APN
Test Deal 1</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">If
true, the deal is active. Note that the deal will be available to the
buyer only when this field is true, <code
class="ph codeph">start_date</code> is in the past (or null), and <code
class="ph codeph">end_date</code> is in the future (or null).</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">true</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
day and time when the deal starts being available to the buyer. If this
is set, the format must be "YYYY-MM-DD HH:MM:SS".</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">2017-01-01 00:00:00</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
day and time when the deal stops being available to the buyer. If this
is set, the format must be "YYYY-MM-DD HH:MM:SS".</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">2037-01-01 00:00:00</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">floor_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
minimum CPM value that the buyer must bid to be eligible for the
deal.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">0.5</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">If
true, the <code class="ph codeph">floor_price</code> is applied for the
deal.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">true</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
buying member who can target this deal. For more details, see <a
href="deal-eligibility-requirements.html#ID-00000844__buyer_step1"
class="xref">Buyer</a> below.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">882</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__1"><code class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__3">The
type of deal. For platform sellers, a deal can be an open auction or a
private auction. For more details, see <a
href="deal-eligibility-requirements.html#ID-00000844__type_step1"
class="xref">Type</a> below.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__4">2</td>
</tr>
</tbody>
</table>

**  
Buyer**

The buyer object can be set on a POST, but cannot be updated with a PUT.
If you want to change the buyer, you need to create a new deal.  
The `buyer` object should contain the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__41"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__42"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000844__entry__43"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__44" class="entry colsep-1 rowsep-1">Expected
Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__41"><code class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__42">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__43">The
member ID of the buyer.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__44"> 882</td>
</tr>
</tbody>
</table>

  
**Type**

The `type` object should contain the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__49"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__50" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000844__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__52" class="entry colsep-1 rowsep-1">Expected
Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__49"><code class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__50">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00000844__entry__51">The ID representing the type of deal.
Possible values:
<ul>
<li>1 = Open Auction<br />
In an "Open Auction", buyers targeting the deals and buyers targeting
the inventory via other means compete for the impression. If a buyer
targeting a deal submits the highest bid and the bid clears the deal's
floor, that buyer wins the auction, paying either the second-highest bid
or the deal floor price, whichever is higher. If one of the non-deal
buyers submits the highest bid, that buyer wins the auction, paying
either the second-highest bid or ECP, whichever is higher. </li>
<li>2 = Private Auction<br />
In a "Private Auction", buyers targeting the private deals compete for
the impression first. Then, if none of the deal buyers win, the auction
is opened to buyers targeting the inventory via other means. If a buyer
targeting a deal submits a bid higher than the deal's floor and higher
than any other private auction bids, that buyer wins the auction, paying
either the second-highest bid from the private auction or the deal floor
price, whichever is higher. If no private auction deals clear their
floors, the highest bid in the open auction wins, paying either the
second-highest bid from the open auction or ECP, whichever is
higher.</li>
</ul>
<p>For examples showing how these different types of auctions work, see
"Deal Auction Mechanics" in 
documentation.</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00000844__entry__52">Private Auction</td>
</tr>
</tbody>
</table>





##  Step 2. Set up the same deal for buyer member AN Challenge (1370)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__57"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__58" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000844__entry__59"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__60" class="entry colsep-1 rowsep-1">Expected
Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
custom code for the deal.

Note: This field is mandatory and
represents your internal deal ID, passed in the <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
class="xref" target="_blank">incoming bid request</a> through the PMP's
object, deal ID field.
</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00000844__entry__60">Value that you will be passing in PMP's
object, deal ID field</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
name of the deal.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__60">APN
Test Deal 2</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">If
true, the deal is active. Note that the deal will be available to the
buyer only when this field is true, <code
class="ph codeph">start_date</code> is in the past (or null), and <code
class="ph codeph">end_date</code> is in the future (or null).</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">true</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
day and time when the deal starts being available to the buyer. If this
is set, the format must be "YYYY-MM-DD HH:MM:SS".</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">2017-01-01 00:00:00</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
day and time when the deal stops being available to the buyer. If this
is set, the format must be "YYYY-MM-DD HH:MM:SS".</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">2037-01-01 00:00:00</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">floor_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
minimum CPM value that the buyer must bid to be eligible for the
deal.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">0.5</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">If
true, the <code class="ph codeph">floor_price</code> is applied for the
deal.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">true</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
buying member who can target this deal. For more details, see <a
href="deal-eligibility-requirements.html#ID-00000844__buyer_step2"
class="xref">Buyer</a> below.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">1370</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__57"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__58">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__59">The
type of deal. For platform sellers, a deal can be an open auction or a
private auction. For more details, see <a
href="deal-eligibility-requirements.html#ID-00000844__type_step2"
class="xref">Type</a> below.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__60">2</td>
</tr>
</tbody>
</table>

**Buyer**  
  

The buyer object can be set on a POST, but cannot be updated with a PUT.
If you want to change the buyer, you need to create a new deal.

The `buyer` object should contain the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__97"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__98"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000844__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__100"
class="entry colsep-1 rowsep-1">Expected Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__97"><code class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__98">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000844__entry__99">The
member ID of the buyer.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__100"> 1370</td>
</tr>
</tbody>
</table>

  
**Type**  

The `type` object should contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000844__entry__105"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000844__entry__106" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000844__entry__107"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000844__entry__108"
class="entry colsep-1 rowsep-1">Expected Value (For Test)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__105"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__106">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__107">The ID representing the type of deal.
Possible values:
<ul>
<li>1 = Open Auction<br />
In an "Open Auction", buyers targeting the deals and buyers targeting
the inventory via other means compete for the impression. If a buyer
targeting a deal submits the highest bid and the bid clears the deal's
floor, that buyer wins the auction, paying either the second-highest bid
or the deal floor price, whichever is higher. If one of the non-deal
buyers submits the highest bid, that buyer wins the auction, paying
either the second-highest bid or ECP, whichever is higher. </li>
<li>2 = Private Auction<br />
In a "Private Auction", buyers targeting the private deals compete for
the impression first. Then, if none of the deal buyers win, the auction
is opened to buyers targeting the inventory via other means. If a buyer
targeting a deal submits a bid higher than the deal's floor and higher
than any other private auction bids, that buyer wins the auction, paying
either the second-highest bid from the private auction or the deal floor
price, whichever is higher. If no private auction deals clear their
floors, the highest bid in the open auction wins, paying either the
second-highest bid from the open auction or ECP, whichever is
higher.</li>
</ul>
<p>For examples showing how these different types of auctions work, see
"Deal Auction Mechanics" in 
documentation.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000844__entry__108">Private Auction</td>
</tr>
</tbody>
</table>





## Step 3. Submit the deals for review 

Once you feel confident that you've appropriately built to our
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a>, and have set up both your
deals as outlined above, please submit a
<a href="https://help.xandr.com" class="xref" target="_blank">support
case</a> in order to have your traffic reviewed. Include both the
Xandr deal IDs you've created. We will update
you on the final steps of the process.





## Deal Creation Formatting

**REST API**

Add a new deal:

``` pre
POST https://api.appnexus.com/deal 
(deal JSON)
```

Modify an existing deal:

``` pre
PUT https://api.appnexus.com/deal?id=DEAL_ID
(deal_update JSON)
```

View all deals you have with buyers:

``` pre
GET https://api.appnexus.com/deal
```

View a specific deal:

``` pre
GET https://api.appnexus.com/deal?id=DEAL_ID 
```

View multiple deals by ID using a comma-separated list:

``` pre
GET https://api.appnexus.com/deal?id=1,2,3
```

Delete a deal:

``` pre
DELETE https://api.appnexus.com/deal?id=DEAL_ID
```

**  
Example**

Example POST call

``` pre
$ cat new_test_deal_1
 
{
    "deal": {
        "code": "APN-TEST1",
        "use_deal_floor": true,
        "name": "APN Test Deal 1",
        "active": true,
        "start_date": "2016-12-01 01:00:00",
        "end_date": "2037-01-01 00:00:00",
        "floor_price": 0.5,
        "currency": "USD",
        "buyer": {
            "id": 882
        },
        "type": {
            "id": 2
        }
    }
}
 
$ curl -b cookies -c cookies -X POST -d @new_test_deal_1.json 'https://api.appnexus.com/deal'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 64,
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 64,
            "code": "APN-TEST1,
            "name": "APN Test Deal 1",
            "description": null,
            "active": true,
            "start_date": "2016-12-01 01:00:00",
            "end_date": "2037-01-01 00:00:00",
            "profile_id": null,
            "package_id": null,
            "floor_price": 0.5,
            "currency": "USD",
            "use_deal_floor": true,
            "last_modified": "2013-12-04 20:43:44",
            "seller": {
                "id": 2345,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 882,
                "bidder_id": 2,
                "name": "AN Talent"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": null,
            "ask_price": 0,
            "size_preference": null
        }
    }
}
```






