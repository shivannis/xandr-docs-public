---
Title : Deal Screen
Description : The Deals screen is where a bidder
can see the deals Xandr publishers have set up
with their buyers and get further details about the deal. For additional
---


# Deal Screen



The Deals screen is where a bidder
can see the deals Xandr publishers have set up
with their buyers and get further details about the deal. For additional
details on the deal, bidders can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.



## Deal Screen Access

1.  Sign in to the Bidders
    UI: <a href="https://bidder.xandr.com/" class="xref"
    target="_blank">https://bidder.xandr.com</a>
2.  Select the bidder.
3.  Click Switch to Default User.
    The Profiles screen is
    accessed.
4.  Click on the Deals tab to access
    the Deals screen. (It is
    located to the right of
    the Profiles tab).





## Main screen Metrics

The Main deal screen lists all of the deals for a bidder, and their
associated attributes/metadata. The table below details each of the
columns displayed:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b85__entry__1" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00008b85__entry__2"
class="entry colsep-1 rowsep-1">Filterable</th>
<th id="ID-00008b85__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Buyers</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
buying member or seat who can target this deal. Can be <span
class="ph">Xandr Member ID or DSP Buyer Seat ID.
<p>Both the ID and name for the buyer is listed in this column.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Sellers</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
selling member who is offering the deal. 
<p>Both the ID and name for the seller is listed in this
column.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Activity Status</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__3">Indicates if deal is Active or
Inactive.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Deal Name/ID</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">Name
of the deal and Xandr Deal ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Deal Types</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
type of deal. A deal can be an <strong>open auction</strong> or a
<strong>private auction</strong>.
<ul>
<li><u>Open Auction<br />
</u>: In an "Open Auction", <strong>buyers targeting the deals and
buyers targeting the inventory via other means compete for the
impression</strong>. If a buyer targeting a deal submits the highest bid
and the bid clears the deal's floor, that buyer wins the auction, paying
either the second-highest bid or the deal floor price, whichever is
higher. If one of the non-deal buyers submits the highest bid, that
buyer wins the auction, paying either the second-highest bid or ECP,
whichever is higher. </li>
<li><u>Private Auction<br />
</u>: In a "Private Auction", <strong>buyers targeting the private deals
compete for the impression first</strong>. Then, if none of the deal
buyers win, the auction is opened to buyers targeting the inventory via
other means. If a buyer targeting a deal submits a bid higher than the
deal's floor and higher than any other private auction bids, that buyer
wins the auction, paying either the second-highest bid from the private
auction or the deal floor price, whichever is higher. If no private
auction deals clear their floors, the highest bid in the open auction
wins, paying either the second-highest bid from the open auction or ECP,
whichever is higher.</li>
</ul>
<p>For examples showing how these different types of auctions work,
see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-auction-mechanics.html"
class="xref" target="_blank">Deal Auction Mechanics</a>. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Ask Price</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The 
price associated with the deal. This is the minimum amount the seller
will accept for this inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Start Date</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
day and time when the deal starts being available to the buyer. Null
corresponds to "immediately".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>End Date</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
day and time when the deal stops being available to the buyer. Null
corresponds to "indefinitely".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Last Modified</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
date and time when the deal was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Imps Won</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
total number of impressions won.
<p>Can select data from: </p>
<ul>
<li>Today</li>
<li>Yesterday</li>
<li>Trailing 7 days</li>
<li>Last 30 days</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__1"><strong>Imps Matched</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__3">The
total number of impressions that match the seller's settings on the
deal.</td>
</tr>
</tbody>
</table>





## How to Filter Data on Main Screen

To filter data by any of the filterable columns (see table above):

1.  Click on the column heading to enable the search box or filter
    selection values.
2.  Once you select your filter values, click on the "Search" button on
    the top right hand corner.
3.  Your search results will display on the main screen.





## Side Panel

Access additional details about the deal by clicking on the deal row to
open a side panel. The below deal details are included in the side panel
display.

<div id="ID-00008b85__note_w2l_ntk_qwb" 

Note: If the field is not present in
the side panel, it means the details is not applicable to the deal.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b85__entry__37" class="entry colsep-1 rowsep-1">Field
Name</th>
<th id="ID-00008b85__entry__38"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Seller</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
seller name and Seller ID (included in parenthesis) for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Buyer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
buyer member id or buyer seat id eligible to bid on the deal. Id is
included in parenthesis.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Details whether the deal is:
<ul>
<li>public deal</li>
<li>private deal</li>
<li>programmatic guaranteed deal</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Imps Matched</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
total number of impressions that match the deal's targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__37">Bid
Requests</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
number of bid requests sent that include the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Bids Received</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
number of times a buyer bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__37">Bid
Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
percentage of deal auctions in which the buyer bid</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__37">%
Ineligible</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
percentage of bids rejected due to errors (Learn more about bid
errors: <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Imps Sold</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
total number of impressions won.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Spend</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Total spend on the deal in USD.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Gross Win Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
percentage of impressions won out of all imps matched.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__37">Net
Win Rate</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
percentage of impressions won out of all bids on deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Deal Name</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Name for the deal in <span
class="ph">Xandr systems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Price</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
ask price or bid floor for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Lifetime Budget</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
negotiated impression amount to be delivered on the deal (relevant only
to PG deals).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Auction Type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">The
pricing type for the deal. Possible values: first price, second price,
and fixed price.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Start Date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Starting date for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__37">End
Date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b85__entry__38">End
date for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Media Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Allowed media types for deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__37">Sizes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b85__entry__38">Allowed creative sizes for deal.</td>
</tr>
</tbody>
</table>





## Download Data

Users can download data displayed from the main deal screen by clicking
the "download view" and "download last xx" buttons on the top right hand
side of the deal screen. 

**Download View:** This will download all the deals currently displayed
on the screen into a CSV file.

**Download last XX:** This will download all of the deals currently
displayed on the screen as well as all deals in previous pages. For
example, if user is viewing page 3 of the deals list, then deals from
all 3 pages will be downloaded to the CSV. 






