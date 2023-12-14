---
Title : Multi-Buyer Seller Deal Metrics
Description : The Multi-Buyer Seller Deal Metrics report provides key information
ms.date: 10/28/2023
relevant to sellers about multi-buyer deal metrics, performance, and
rejection reasons.
---


# Multi-Buyer Seller Deal Metrics



The Multi-Buyer Seller Deal Metrics report provides key information
relevant to sellers about multi-buyer deal metrics, performance, and
rejection reasons.

>



<b>Note:</b> As of May 3, 2021, Imps Matched
and Bid Requests will be randomly sampled at a rate of 10 percent. The
sampled values will be multiplied by 10 to give a reasonable estimate in
all screens where these two metrics are reported. No other deal metrics
will be affected.





>

## Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.



- Custom
- Current Hour
- Last Available Day
- Last Hour
- Today
- Last 24 Hours
- Last 48 Hours
- Yesterday
- Last 2 Days
- Last 7 Days
- Last 7 Available Days
- Last 14 Days
- Last 14 Available Days
- Last 30 Days
- Last 30 Available Days
- Last Month
- Last 100 Days
- Last 365 Days
- Quarter to Date
- Month to Date
- Month to Yesterday
- Lifetime



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.





>

## Dimensions



<table
id="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1"
class="entry">Column</th>
<th
id="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2"
class="entry">Filter?</th>
<th
id="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Buyer
Member</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">Yes</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">ID
and name of the member whose advertiser purchased the impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Buyer
Seat Name</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Display
name for the buyer seat code</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Buyer
Seat Code</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Custom
Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Deal</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">Yes</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Deal
associated with the impression</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Ask
Price</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Ask
price for the deal</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Bidder
ID</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">Yes</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">ID
of the bidder (DSP) for the impression</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Bidder
Name</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Name
of the bidder (DSP) for the impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Start
Date</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Date
and time when the deal starts being available to the buyer</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">End
Date</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Date
and time when the deal stops being available to the buyer</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Deal
Buyer Type</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">Yes</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Select
to filter by the type of buyer the impression served through. Possible
values are Entire Deal, Bidder, Buyer Member and Buyer Seat.
<ul>
<li><strong>Entire Deal</strong>: Deal metrics for the entire deal,
across all buyers.</li>
<li><strong>Bidder</strong>: Deal metrics for all buyers within the
given DSP on the deal.</li>
<li><strong>Buyer Member</strong>: Deal metrics for a single legacy
Xandr buyer member ID. When looking at a
bidder-level deal, you will only see impressions matched and bid
requests in the Bidder and the Entire Deal rows, not in the Buyer Member
or the Buyer Seat.</li>
<li><strong>Buyer Seat</strong>: Deal metrics for a single seat ID
(DSP's proprietary buyer ID). When looking at a bidder-level deal, you
will only see impressions matched and bid requests in the Bidder and the
Entire Deal rows, not the Buyer Member or the Buyer Seat.</li>
</ul>

<b>Note:</b> This dimension is mandatory on
the Multi-Buyer Deal Metrics Report. To not see data broken out by deal
buyer type, filter by Entire Deal.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Deal
Type Name</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Whether
the deal is an open deal, private deal, or programmatic guaranteed
deal</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Deal
Auction Type Name</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">Type
of auction (standard-, first- or fixed-price)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Priority</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">For
a private auction only, the priority the seller assigned to the
deal</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__1">Package
ID</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__2">No</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-f2c888b6-7b39-4815-a3f2-2d5e51e36bc0__entry__3">ID
of the Package that the deal was created from. This value will be 0 if
the deal was not created from a package.</td>
</tr>
</tbody>
</table>

>

## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table
id="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1"
class="entry">Column</th>
<th
id="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Imps
(matched)</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of impressions that matched the deal's targeting
settings.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Imps
(won)</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of impressions won.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Seller
Revenue</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
seller revenue on the deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Seller
Revenue eCPM</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
seller revenue on the deal, represented in eCPM.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Bid
Rate</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
percentage of impressions bid on compared to the number of bid requests
sent to the buyer.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Gross
Win Rate</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
percentage of impressions won compared to the number of impressions
matched.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Ineligible
Bid Rate</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
percentage of rejected bids compared to the total number of bids -
calculated as Reject Count / Bids.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Net
Win Rate</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
percentage of impressions won compared to the number of bids made by the
buyer - calcuated as Imps (won) / Bids.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Average
Biased Bid</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
average biased bid for the deal. This is the bid price used for ranking
purposes in the auction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Average
Floor Price</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
average floor price for bids against this deal. If an Ask Price is set
on the deal, this value will be constant. If the deal uses Market Price,
then this value will be the average floor price calculated from the
floors applied to this deal across all auctions.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Average
Net Bid</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
average net bid on the deal. This is the bid price that is net of all
fees and used in determining seller revenue (prior to any bid price
reduction that may take place).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Bid
Requests</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bid requests sent to the buyer. This number may be less than
Imps (matched) due to buyer filters or seller settings.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Total
Bids</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids submitted by the buyer for this deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Below Floor Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because they are below the reserve price set on
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Below Floor Ym Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because they are below the yield management
floor applicable for the auction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Bidder Error Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to bidder errors.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Bidder Error Deal Not Available Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the deal is no longer available.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Adserver Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids blocked by the seller's Ad Profile due to adserver
exclusions.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Audit Status Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids blocked by the Ad Profile due to their audit status. This
typically happens when the buyer is bidding with an unaudited creative
and the seller has blocked unaudited creatives in ad quality.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Brand Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids blocked by the Ad Profile due to brand exclusions.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Category Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids blocked by the seller's Ad Profile due to category
exclusions.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids rejected by settings on the seller's Ad
Profile.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Creative Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the creative is blocked by the Ad
Profile.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Language Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the language of the ad is blocked by the
Ad Profile.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Member Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the member is blocked by the Ad
Profile.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Ad Profile Tech Attribute Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because a technical attribute or attributes of
the creative is blocked by the Ad Profile.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Adserver Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids blocked due to adserver constraints on the Deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Below Floor Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because they are below the deal's floor
price.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Brand Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because their brands are not allowed on the
deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Category Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because they do not meet the deal's category
requirements.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids rejected due to settings on the deal.<br />
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Creative Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the creative is blocked by the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Language Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to allowed language constraints on the
deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Media Subtype Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to not matching the deal's allowed media
subtypes.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Payment Type Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to not matching the deal's allowed payment
types.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Size Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to not meeting the deal's size
requirements.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Deal Tech Attribute Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to technical attribute limits on the
deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Dynamic Adserver Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to adserver constraints dynamically passed
in by the seller at the time of the impression request.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Dynamic Brand Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the brand is blocked dynamically by the
bid request passed in by the seller.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Dynamic Category Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the category is blocked dynamically by
the bid request passed in by the seller.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Dynamic Language Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because the language is blocked dynamically by
the bid request passed in by the seller.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Blocked By Dynamic Tech Attribute Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected because a technical attribute is blocked
dynamically by the bid request passed in by the seller.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of rejected bids.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Invalid Creative Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to invalid creatives that the buyer bid
with.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Invalid Creative Not Ssl Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
number of bids rejected due to the creative not being SSL approved for a
secure auction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Other Advertiser Exclusion Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids rejected due to advertiser exclusions not listed
above.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Other Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids rejected for reasons other than data security not
listed above.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__1">Reject
Other Data Protection Count</td>
<td class="entry"
headers="multi-buyer-seller-deal-metrics__table-425fbf13-300e-407c-a1b0-3ddadf8f9c36__entry__2">The
total number of bids rejected for data security reasons not listed
above.</td>
</tr>
</tbody>
</table>



>

## To Run your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    <b>Warning:</b> The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="multi-buyer-seller-deal-metrics__d10e107">**Export, send
      results via email**: Run the report in the background and email
      the results to one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="multi-buyer-seller-deal-metrics__d10e136">Click
    Run report to send your report
    request.



>

## Related Topic

- <a href="network-reporting.md" class="xref">Network Reporting</a>
- <a href="publisher-reporting.md" class="xref">Publisher Reporting</a>






