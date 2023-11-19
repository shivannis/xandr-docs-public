---
Title : Metrics Screen
Description : Use the Metrics screen to monitor real
ms.date : 10/28/2023
time activity on your Xandr integration across
all of our global data centers. Monitor the amount of traffic we send to
---


# Metrics Screen



Use the Metrics screen to monitor real
time activity on your Xandr integration across
all of our global data centers. Monitor the amount of traffic we send to
your regional servers, or get data on bid rates and response times.
Create your own graphs by selecting options in the three main sections
fo the metrics screen: 



## Available Metrics

**Bid Requests**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__1" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__2"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__1"><strong>Available</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__2">Count of bid requests available for a
bidder to bid on. Note that no bid requests have actually been sent when
this is tallied, and only minimal filtering checks have been
performed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__1"><strong>Attempt</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__2">Count of all bids requests sent to
bidders in the auction prior to filtering logic and other checks being
applied.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__1"><strong>Sent</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__2">Count of valid bid requests actually
sent to bidders after filtering logic has been applied.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__1"><strong>Profile filtered</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__2">Count of bid requests that were not sent
because they failed bidder profile filtering checks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__1"><strong>Volume filtered</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__2">Count of bid requests that the impbus
throttled and did not send. Throttling is set via the
passthrough_percent value in the profiles.</td>
</tr>
</tbody>
</table>

**Bid Responses**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__13"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__14"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__13"><strong>Response received</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__14">Count of valid bid responses the impbus
received from the bidder. This metric is tallied after the response
content is converted into JSON. If there is an error in the JSON
parsing, this metric is not incremented.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__13"><strong>Partner impressions
cleared</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__14">Count of bids won on our SSPs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__13"><strong>Platform impressions
cleared</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__14">Count of bids won on our Platform
Inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__13"><strong>Total impressions
cleared</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__14">Total count of bids won (from SSPs and
Platform Inventory).</td>
</tr>
</tbody>
</table>

**Notify requests**

Notifications are set up by the bidder software that provide the results
of an auction to bidders that have registered a notify url.
Notifications are JSON encoded responses that include information about
the auction.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__23"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__24"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__23"><strong>Sent</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__24">Total count of successfully sent
notifies</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__23"><strong>Skipped </strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__24">Count of notifies where the impbus did
not send a notify request due to bidder configuration that turns off
notifies, rather than because of an error. Notifies could be skipped
because the bidder has them blocked, the bidder has not set a notify
uri, or where the bidder has notifies explicitly turned off.</td>
</tr>
</tbody>
</table>

**Pricing**

Preemptive auctions occur when the impbus is participating in a
third-party auction as a bidder. The impbus runs its own auction and
passes the winning bid along to the third-party auction. The seller does
not automatically display content for the winning bid because this
winning bid is not guaranteed to win the final auction.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__29"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__30"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__29"><strong>Best bid price</strong>
<p>(platform)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__30">Total amount of bids per number bids
made, in USD for Platform inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__29"><strong>Cleared price</strong>
<p>(platform)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__30">Total amount of winning bids per total
number of winning bids, in USD for Platform inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__29"><strong>Best bid price</strong>
<p>(partner)*</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__30">Total best bid price averaged by count
of best bids, in USD for SSP bids.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__29"><strong>Cleared bid price</strong>
<p>(partner)*</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__30">Average clear price for bids, in USD,
that won the SSP auction.</td>
</tr>
</tbody>
</table>

**Timing**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__39"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__40"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__39"><strong>Avg response time</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__40">Average response time per request,
calculated by taking the sum of the response times reported for each bid
and dividing them by the total valid responses received for each
bid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__39"><strong>Max response Time</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__40">Maximum time to receive a bid response
from a bidder in millils.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__39"><strong>Timeout %</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__40">Percentage of bid requests the impbus
sent that resulted in a timeout.</td>
</tr>
</tbody>
</table>

**Other**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__47"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__48"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__47"><strong>Client errors</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__48">Total number of client errors. For a
list of possible client errors, refer to the <a
href="bid-error-codes.md"
class="xref" target="_blank">Bid Error Codes</a> page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__47"><strong>No connections</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__48">Percent of bid requests sent that
resulted in connection errors. Connection errors are indicated by the
request status or by the request returning an HTTP status other than
200. Once this error is recorded, the impbus skips further bid
processing steps and finishes processing that bid, recording the
error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__47"><strong>Mapped user imps</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__48">Count of segment codes returned by data
provider bidders.</td>
</tr>
</tbody>
</table>





## Datacenter

Select the data center you would like to be included in the metrics
graph:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a10__entry__55"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00008a10__entry__56"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>All</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__56">Data from all global data centers will
be included.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>New York</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a10__entry__56">US
East coast data center.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>Los Angeles</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a10__entry__56">US
West coast data center.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>Amsterdam</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__56">Western Europe Data center.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>Singapore</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__56">Asia and Australia Data Center.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__55"><strong>Frankfurt</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a10__entry__56">Eastern Europe Data Center.</td>
</tr>
</tbody>
</table>





## Date Range

Select the date range and time for the data to be displayed in the
metrics graph. There are options to select both the date and the time.






