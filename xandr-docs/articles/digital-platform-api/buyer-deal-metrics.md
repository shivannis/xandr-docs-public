---
Title : Buyer Deal Metrics
Description : The Buyer Deal Metrics report provides key information about deal
ms.date: 10/28/2023
ms.custom: digital-platform-api
metrics, performance, and rejection reasons that is relevant to buyers.
---


# Buyer Deal Metrics





The Buyer Deal Metrics report provides key information about deal
metrics, performance, and rejection reasons that is relevant to buyers.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the
<a href="buyer-deal-metrics.md#buyer-deal-metrics__example"
class="xref">example</a> below.





## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- yesterday
- last_2_days
- last_7_days (not including today)
- last_14_days
- last_30_days



**Data Retention Period**

Data retention period for this report is 30 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-deal-metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-deal-metrics__entry__2"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buyer-deal-metrics__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The seller that sold the
deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The ID of the seller that sold
the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The deal associated with the
transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The ID of the deal associated
with the transaction for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">deal_alias</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">A name assigned to a deal by a
buyer with buyer-specific naming conventions which is typically owned
and named by a seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">ask_price</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The ask price for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The day and time when the deal
starts being available to the buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The day and time when the deal
stops being available to the buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">deal_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The deal type for a particular
deal. Deal type options are Open Auction, Private Auction, Curated,
First Look, or Programmatic Guaranteed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">deal_auction_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The auction type for the deal. A
deal can have the following auction types: first price, second price,
and fixed price.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">package_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">The ID of the package, if the
deal is associated with a package. The integer value of the package that
the deal was created from. This value will be <code
class="ph codeph">0</code> if the deal was not created from a
package.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__1">priority</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__3">For a private auction only, the
priority the seller assigned to the deal.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-deal-metrics__entry__40"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-deal-metrics__entry__41"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-deal-metrics__entry__42"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buyer-deal-metrics__entry__43"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The hour of the auction.

<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">day</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">month</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The month of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The ID of the buying member. If
the impression was not purchased, this field shows one of the following
values: <code class="ph codeph">229</code> = PSA, <code
class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The name of the buying member.

<b>Note:</b> The name might be <code
class="ph codeph">"Default"</code> or <code
class="ph codeph">"Default Error"</code>, which means that there was no
buyer for the impression, and a default creative was served.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">imps_matched</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total number of impressions
that match the seller's settings (not the buyer's) on the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">bid_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">bids</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of completed
bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">submitted_bids</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of submitted
bids.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">imps_won</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total number of impressions
won.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">buyer media cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total cost to the
buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total number of rejected
bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">deal_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The deal type for a particular
deal. Deal type options are Open Auction, Private Auction, Curated,
First Look, or Programmatic Guaranteed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">bid_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The rate of bidding on the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">ineligible_bid_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The rate of ineligible bids on
the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">gross_win_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The gross win rate for the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">net_win_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The net win rate for the
deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">ask_price</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The ask price for the deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">buyer_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The cost of the deal to the
buyer in eCPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_bidder_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected due
to bidder errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The sum of all bids rejected by
the Ad Profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_below_floor_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because they are below the reserve price set on the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The sum of all bids rejected due
to constraints of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_invalid_creative_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected due
to invalid creatives that the buyer bid with.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_dynamic_adserver_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected due
to adserver constraints dynamically passed in by the seller at the time
of the impression request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_other_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected for
reasons not listed here.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_bidder_error_deal_not_available_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the deal was no longer available.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_creative_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the creative ad server was blocked by the ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_language_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the language of the ad was blocked by the ad profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_tech_attribute_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because a technical attribute of the ad was blocked by the ad
profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_category_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the ad profile does not allow the category of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_brand_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids blocked by
the ad profile due to brand exclusions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_adserver_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because an ad server associated to the creative that the buyer bid with
is blocked.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_member_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the member was blocked by the ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_ad_profile_audit_status_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids blocked by
the Ad Profile due to their audit status. This typically happens when
the buyer is bidding with an unaudited creative and the seller has
blocked unaudited creatives in ad quality.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_below_floor_ym_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because they are below the yield management floor set for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_invalid_creative_not_ssl_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected due
to the creative not being SSL approved for a secure auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_creative_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids blocked by
the deal due to their language settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_language_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids blocked by
the deal due to their language settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_tech_attribute_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because a technical attribute was blocked by the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_category_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the deal does not allow the category of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_brand_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because their brand was blocked by the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_below_floor_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because they are below the deal's floor price.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_media_subtype_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected due
to their media subtypes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_size_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because they did not match the size requirements for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_payment_type_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because their payment type was not allowed by the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_deal_adserver_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids blocked due
to adserver constraints on the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_dynamic_brand_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the brand is blocked dynamically by the bid request passed in by
the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_dynamic_language_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the language is blocked dynamically by the bid request passed in
by the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_dynamic_tech_attribute_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because their techincal attributes are blocked dynamically by the bid
request passed in by the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_blocked_by_dynamic_category_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The number of bids rejected
because the creative category is blocked dynamically by the bid request
passed in by the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_other_data_protection_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total number of bids
rejected for data security reasons not listed here.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__40">reject_other_advertiser_exclusion_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__42">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-deal-metrics__entry__43">The total number of bids
rejected due to advertiser exclusions not listed above.</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type`
`"buyer_deal_metrics_report"`, as well as the columns (dimensions and
metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_deal_metrics_report

{
    "report":
    {
        "report_type":"buyer_deal_metrics_report",
        "columns":[
            "hour",
            "seller_member_name",
            "deal_name",
            "start_date",
            "end_date",
            "bids",
            "imps_won",
            "reject_count",
            "media_cost"
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -X POST -d @buyer_deal_metrics_report 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"buyer_deal_metrics_report\",\"columns\":[\"hour\",
            \"buyer_member_name\",\"deal_name\",\"start_date\",\"end_date\",\"bids\",\"imps_won\",\"media_cost\"],
            \"row_per\":[\"hour\",\"buyer_member_id\",\"deal_id\"],
            \"report_interval\":\"last_7_days\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.





<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/buyer_deal_metrics_report.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










