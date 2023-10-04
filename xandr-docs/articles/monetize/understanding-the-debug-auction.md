---
Title : Understanding the Debug Auction
Description : To understand what is happening behind the scenes during an auction, you
can run a debug auction. This page explains how to run a debug auction
---


# Understanding the Debug Auction



To understand what is happening behind the scenes during an auction, you
can run a debug auction. This page explains how to run a debug auction
and how to read the output you receive.

Running a Debug Auction

A debug auction simulates a real auction without actually logging or
serving anything and shows the results in your browser. The log shows
the impression bus communicating with all active bidders (including
Xandr) and then shows the member-specific
decisioning.



A debug auction can be run using the following calls:



Note: All debug auction and browser
cookie override calls must use secure https protocols. Requests made
using http will not generate valid results.





**Production/Beta Environment:**

``` pre
https://ib.adnxs.com/tt?id=[TAG_ID]&size=[WIDTH]x[HEIGHT]&debug_member=[BUYER_MEMBER_ID]&dongle=[PASSWORD] 
```

**Client-Testing Environment:**

``` pre
https://ib-test.adnxs.com/tt?id=[TAG_ID]&size=[WIDTH]x[HEIGHT]&debug_member=[BUYER_MEMBER_ID]&dongle=[PASSWORD] 
```

**Video Creatives:**

Make sure to use a **ptv** tag instead of a **tt** tag while running a
debug auction for video creatives.

``` pre
https://ib.adnxs.com/ptv?id=[TAG_ID]&debug_member=[BUYER_MEMBER_ID]&dongle=[PASSWORD] 
```

Parameter Syntax

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__1" class="entry">Parameter</th>
<th id="ID-0000075a__entry__2" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__1">id</td>
<td class="entry" headers="ID-0000075a__entry__2">The ID of the
placement tag you will run a debug auction for</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__1">size</td>
<td class="entry" headers="ID-0000075a__entry__2">Size of the placement
to run, used for sizeless tags</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__1">dongle</td>
<td class="entry" headers="ID-0000075a__entry__2">The member's unique
debug password</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__1">debug_member</td>
<td class="entry" headers="ID-0000075a__entry__2">The ID of the member
running the debug auction</td>
</tr>
</tbody>
</table>

Optional Parameters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__11" class="entry">Parameter</th>
<th id="ID-0000075a__entry__12" class="entry"></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__11">bidder</td>
<td class="entry" headers="ID-0000075a__entry__12">The bidder ID. <span
class="ph">Microsoft Monetize uses bidder ID 2 in production</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__11">referrer</td>
<td class="entry" headers="ID-0000075a__entry__12">Simulate the
referring URL from which the ad call is coming</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__11">prefer_learn</td>
<td class="entry" headers="ID-0000075a__entry__12">Set to "true" to
force a prefer learn auction</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__11">position</td>
<td class="entry" headers="ID-0000075a__entry__12">Overrides fold
position. Can be set to "above" or "below"</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__11">age</td>
<td class="entry" headers="ID-0000075a__entry__12">Overrides age
(integer)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__11">gender</td>
<td class="entry" headers="ID-0000075a__entry__12">Overrides gender
("male" or "female")</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__11">debug_json</td>
<td class="entry" headers="ID-0000075a__entry__12">Converts the
auction's HTML output to JSON form when set to "1" and
"&amp;bidder_only=1" is appended</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__11">kw_ prefix</td>
<td class="entry" headers="ID-0000075a__entry__12">Adds keyword
parameters for targeting purposes, for example: "kw_keyname=value1"</td>
</tr>
</tbody>
</table>

Optional Geo Code Parameters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__29" class="entry">Parameter</th>
<th id="ID-0000075a__entry__30" class="entry"></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__29">country</td>
<td class="entry" headers="ID-0000075a__entry__30">Overrides a cookie's
current country geo code with whatever is passed as a value. For
example: "country=US". See <a href="https://www.maxmind.com/app/iso3166"
class="xref" target="_blank">here</a> for a complete list of country geo
codes.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__29">region</td>
<td class="entry" headers="ID-0000075a__entry__30">Overrides a cookie's
current region (state) geo code with whatever is passed as a value. For
example: "region=NY". See <a
href="https://www.maxmind.com/app/iso3166_2" class="xref"
target="_blank">here</a> for a complete list of region (state) geo
codes.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__29">city</td>
<td class="entry" headers="ID-0000075a__entry__30">Overrides a cookie's
current city geo code with whatever is passed as a value. For example:
"city=New York". See <a
href="https://code.google.com/apis/adwords/docs/developer/adwords_api_us_cities.html"
class="xref" target="_blank">here</a> for a complete list of city geo
codes.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__29">postal</td>
<td class="entry" headers="ID-0000075a__entry__30">Overrides a cookie's
current postal code with whatever is passed as a value. For example:
"postal=10010". See <a href="https://worldpostalcode.com" class="xref"
target="_blank">here</a> to find a particular postal code.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__29">DMA</td>
<td class="entry" headers="ID-0000075a__entry__30">Overrides a cookie's
current Designated Market Area (DMA) geo code with whatever is passed as
a value. For example: "DMA=501". A DMA divides geographical regions by
their television and radio markets. See <a
href="https://code.google.com/apis/adwords/docs/developer/adwords_api_us_metros.html"
class="xref" target="_blank">here</a> for info on how to obtain a
region's DMA code.</td>
</tr>
</tbody>
</table>



Note: If you are trying to spoof a
particular region or city, you must include the most general to most
specific geographically. For city targeting, you need to include the
country, region (state), and city. For
example:` &country=US&region=NY&city=New York`. Remember to type out the
full city name.



Example

``` pre
https://ib.adnxs.com/tt?id=3457&debug_member=999&dongle=MyDongle 
https://ib.adnxs.com/tt?id=3457&size=728x90&dongle=MyPassWord&debug_member=999&referrer=https://www.appnexus.com 
```

Important Points



Note: Placement tag IDs can be found in
the UI for your direct inventory, but not for
real-time inventory. 





Note: If an item is out of budget,
inactive, or in pacing sleep (i.e. it is spending evenly across the
day), it will not appear in the log. Generally, refreshing will cause
paced objects to appear (because they will have come out of sleep). But
heavily paced objects (e.g. spend $5 evenly with no targeting so there's
a lot of sleeping between bids) may not appear in the final list of
bidding campaigns.



Override Xandr Browser Cookie

When debugging a particular ad campaign, it may help that your browser's
cookie contains or excludes the specific user criteria being targeting
(e.g. country or segment). Please see the below table for information on
how to view/modify your cookie.



Important: If using the cookie viewer,
you must include your member ID and dongle. This ensures you will only
see the segments that belong to your member. You can click on the
Debug button on any placement and to
see your member ID and dongle in the querystring.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__41"
class="entry"><strong>Action</strong></th>
<th id="ID-0000075a__entry__42" class="entry">URL</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__41">View <span
class="ph">Xandr cookie</td>
<td class="entry" headers="ID-0000075a__entry__42"><a
href="https://ib.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE"
class="xref" target="_blank">https://ib.<span
class="ph">adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE</a>
where MEMBER_ID is your member ID, DONGLE is your member-specific
dongle</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__41">Add/remove yourself
to/from segments</td>
<td class="entry" headers="ID-0000075a__entry__42"><p><a
href="https://ib.adnxs.com/seg?add=SEGMENT_ID" class="xref"
target="_blank">https://ib.<span
class="ph">adnxs.com/seg?add=SEGMENT_ID</a></p>
<p><a href="https://ib.adnxs.com/seg?remove=SEGMENT_ID" class="xref"
target="_blank">https://ib.<span
class="ph">adnxs.com/seg?remove=SEGMENT_ID</a></p>
where SEGMENT_ID is the ID of the targeted segment</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__41">Override cookie
geography data</td>
<td class="entry" headers="ID-0000075a__entry__42"><a
href="https://ib.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;country=COUNTRY&amp;region=REGION&amp;dma=DMA&amp;city=CITY&amp;postal=POSTAL"
class="xref" target="_blank">https://ib.<span
class="ph">adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;country=COUNTRY&amp;region=REGION&amp;dma=DMA&amp;city=CITY&amp;postal=POSTAL</a>where
MEMBER_ID is your member ID, DONGLE is your member-specific dongle,
COUNTRY is the targeted country code, REGION is the targeted region
code, DMA is the targeted numeric metropolitan code, CITY is the
targeted city name, and POSTAL is the targeted postal code (Note that to
set city geo, you must set country, region in addition.)</td>
</tr>
</tbody>
</table>

Interpreting the Debug Auction Log

- This is a sample debug log run by an Ad Network for a placement that
  it exposed for reselling.
- This particular debug log was run in a deprecated sandbox environment,
  so URLs are slightly different than they would be in the production
  server.
- All IDs have been changed to random numbers.

<img
src="../images/understanding-the-debug-auction/debug-auction-geo.jpg"
id="ID-0000075a__image-e3593b62-dcab-4674-9541-6e1244ea9f2b"
class="image" />

<img
src="../images/understanding-the-debug-auction/debug-auction-payment-rules.jpg"
id="ID-0000075a__image-8ac70d00-0609-4048-9470-52e16bccb004"
class="image" />

Xandr's bidder gives more detailed debug text,
beginning with "Debug text from bidder 2" (live). This output includes
information such as the bidder version, the region info., and user info.
Excerpts from a live debug auction are below:

<img
src="../images/understanding-the-debug-auction/debug-auction-geo-2.jpg"
id="ID-0000075a__image-1786a930-29b1-4a16-8a64-6d8d79e08c35"
class="image" />

This debug info. continues, including information such as the segments
that the user is in and other relevant objects.

<img
src="../images/understanding-the-debug-auction/debug-auction-segments.jpg"
id="ID-0000075a__image-d3d95004-a8a1-4957-af95-7b6b20df4bba"
class="image" />



Tip: This section highlights the
decisions made by the bidder.



The debug auction then prints a table with the headings of Advertiser,
Line Item, Campaign (if applicable), Detail, and Result. This is the
most important part of the debug auction output as it will tell you why
you may not be bidding on impressions for this tag; or if they are, how
much they would bid.

After all ad campaigns are evaluated, you will see the summary table.

<img
src="../images/understanding-the-debug-auction/debug-auction-summary-table.jpg"
id="ID-0000075a__image-e836dd5c-2b6c-4220-98bd-f5b3d358450a"
class="image" />

You will also see the performance summary.

<img
src="../images/understanding-the-debug-auction/performance-summary.jpg"
id="ID-0000075a__image-a5d08e48-e8c9-49a8-ab47-1ee7c426fb88"
class="image" />

You will receive an output of all bids and final bids. RTB buyers will
see the value of the bid, the brand ID, and the learn type.

<img src="../images/understanding-the-debug-auction/final-bids.jpg"
id="ID-0000075a__image-c35155d4-b6df-4b02-8fbb-f0ef2191852a"
class="image" />



Tip: This debug log will also compare
the result of Xandr's bidder with the result any
other bidders participating in the auction, looking for the winner and
the second highest price (since Xandr uses
Second Price Auction).



Finally, we show the highest net bid, and the member and creative that
would have served had this not been a debug auction.

<img src="../images/understanding-the-debug-auction/highest-net-bid.jpg"
id="ID-0000075a__image-619db20e-5802-423b-a19a-bc6413851e7d"
class="image" />

Possible Debug Auction Results

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__49" class="entry">Result</th>
<th id="ID-0000075a__entry__50" class="entry">Explanation</th>
<th id="ID-0000075a__entry__51" class="entry">Impression Type in
Reporting</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__49">Exclusive</td>
<td class="entry" headers="ID-0000075a__entry__50">The placement is not
enabled for reselling, and the auction was won by a managed bid</td>
<td class="entry" headers="ID-0000075a__entry__51">Kept</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__49">Reserve Not Met</td>
<td class="entry" headers="ID-0000075a__entry__50">The placement is
enabled for reselling, and the auction was won by a managed bid</td>
<td class="entry" headers="ID-0000075a__entry__51">Kept</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__49">Sold</td>
<td class="entry" headers="ID-0000075a__entry__50">The placement is
enabled for reselling, and the auction was won by a third-party bid</td>
<td class="entry" headers="ID-0000075a__entry__51">Sold</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__49">PSA</td>
<td class="entry" headers="ID-0000075a__entry__50">The auction did not
have a winner, and a PSA was shown in place of an ad</td>
<td class="entry" headers="ID-0000075a__entry__51">PSA</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__49">Default</td>
<td class="entry" headers="ID-0000075a__entry__50">The auction did not
have a winner, and a default creative was shown in place of an ad</td>
<td class="entry" headers="ID-0000075a__entry__51">Default</td>
</tr>
</tbody>
</table>

Quick Reference: Debug Auction Data

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000075a__entry__67" class="entry">Debug Data</th>
<th id="ID-0000075a__entry__68" class="entry">Visible to Sellers and in
Direct Auctions</th>
<th id="ID-0000075a__entry__69" class="entry">Visible to RTB Buyers</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Ad profile</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Ask price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Auction ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Audience Targeting
Campaigns</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Bid Request</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Bidder hostport</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Bidder Version</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Browser</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Carrier</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">City</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">City index</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Country</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Country index</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Debug level</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Debug member</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Default visibility
profile</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Device Make</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Device Model</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Device Type</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Domain IDs</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Estimated average
price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Estimated clear
price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Final Bids</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Fold position</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Giveup Price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Hour of Week ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Inventory Class -
<strong>Deprecated</strong></td>
<td class="entry" headers="ID-0000075a__entry__68">--</td>
<td class="entry" headers="ID-0000075a__entry__69">--</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Inventory Groups -
<strong>Deprecated</strong></td>
<td class="entry" headers="ID-0000075a__entry__68">--</td>
<td class="entry" headers="ID-0000075a__entry__69">--</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Inventory Source -
<strong>Deprecated</strong></td>
<td class="entry" headers="ID-0000075a__entry__68">--</td>
<td class="entry" headers="ID-0000075a__entry__69">--</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Inventory Source ID -
<strong>Deprecated</strong></td>
<td class="entry" headers="ID-0000075a__entry__68">--</td>
<td class="entry" headers="ID-0000075a__entry__69">--</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">IP</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">IP Truncated</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Language</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Latitude</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Longitude</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Media Subtype</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Net winning
price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Non-Audience
Targeting Campaigns</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Number of tags</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Offset from UTC</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Operating System</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Operating System
(Extended)</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Operating System
Family</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Payment Rule</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Payment rule ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Performance
summary</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Prefer learn</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Processing
priority</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Publisher ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">QS Data</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Querystring</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Referrer</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Region</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Region index</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Reserve price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">RTB and affiliate
campaigns</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">RTB member</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Second bid</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Secure request</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Second net price</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Segments</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Selected payment
rule</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Sell-side page caps
enabled</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Soft floor</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Supply type</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">tag data</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Tag ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Timezone</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Tinytag</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">URL</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">User</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">User group</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">User ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Venue ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000075a__entry__67">Visibility Profile
ID</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000075a__entry__67">Winning bid</td>
<td class="entry" headers="ID-0000075a__entry__68">Yes</td>
<td class="entry" headers="ID-0000075a__entry__69">Yes</td>
</tr>
</tbody>
</table>

Running a Test Auction

In addition to debug auctions, which simulate real auctions without
logging or serving ads, you can also run a test auction. Test auctions
are designed to allow clients to test if their ads are being delivered
as expected and verify that everything is configured correctly.

Like a debug auction, in a test auction Xandr
does not transact the impression; no one will be paid or billed, nothing
is logged, and no ads will be served. In addition, in a test auction,
the actual content of the ad being sent is ignored; even if a banned
creative is sent, a test auction will not result in an IP being blocked.

To run a test auction, add the `test=1` parameter to an ad call; for
example:

``` pre
https://ib.adnxs.com/tt?id=1234&test=1 
```

If the ad is visible in a browser, the configuration is valid.

Related Topic

- <a href="mobile-debug-auction-tips.html" class="xref">Mobile Debug
  Auction Tips</a>




