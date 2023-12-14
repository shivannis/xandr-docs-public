---
Title : Buyer Auction Service Charge Mechanics
Description : When purchasing inventory with Xandr, the buyer
ms.date: 10/28/2023
may be charged the Buyer Auction Service Charge (BASC) specified in its
contract. BASC is quoted as a percentage of Media Cost.
---


# Buyer Auction Service Charge Mechanics



When purchasing inventory with Xandr, the buyer
may be charged the Buyer Auction Service Charge (BASC) specified in its
contract. BASC is quoted as a percentage of Media Cost.
Xandr can apply this charge in one of two ways,
either as a fee or a deduction. Which of the two is being used will be
specified in the contract.

>

## Fee

In this case, the BASC is charged separately from Media Cost. Note that
these fees will NOT affect or be deducted from Media Cost budgets. As a
result, the total amount Xandr will invoice for
at the end of a campaign (or line item) will exceed the media budget by
the BASC.

`Buyer Payment = Media Cost + (Media Cost * Buyer Auction Service Charge %)`



>

## Deduction (or Bid Reduction)

In this case, the BASC is applied as a component of Media Cost. As a
result, Xandr deducts its BASC from the Media
Cost paid by the buyer and passes the remainder on to the seller. During
the auction, Xandr reduces bids by the amount of
each buyer's BASC before comparing bids to determine the winning price
paid to the seller.

`Buyer Payment = Media Cost`

`Media Cost = Winning Price / (``1` `- Buyer Auction Service Charge %)`



>

## Example

Assume the buyer has a 10% BASC and is bidding a flat $1.20 CPM, and
that the next highest net bid is $.80 CPM.

- If you are participating in a second price auction, the winning price
  for the impression is $0.81 CPM. The following illustrates the bids
  and media cost that result from the Fee and Deduction options:

<table
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__1"
class="entry">BASC %</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__2"
class="entry">BASC Type</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__3"
class="entry">Initial Bid</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__4"
class="entry">Net Bid compared in Auction</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__5"
class="entry">Winning Price</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__6"
class="entry">Media Cost</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__7"
class="entry">Fees</th>
<th
id="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__8"
class="entry">Total Buyer Payment</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__1">10%</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__2">Fee</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__3">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__4">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__5">$0.81
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__6">$0.81
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__7">$0.08
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__8">$0.89
CPM</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__1">10%</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__2">Deduction</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__3">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__4">$1.08
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__5">$0.81
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__6">$0.90
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__7">None</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-f42685f6-8c86-43cc-8a3b-79e173f2e1cb__entry__8">$0.90
CPM</td>
</tr>
</tbody>
</table>

- If you are participating in a first price auction (i.e., no bid
  reduction to next highest bid), the winning price for the impression
  is $1.20 CPM. The following illustrates the bids and media cost that
  result from the Fee and Deduction options:

<table
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__1"
class="entry">BASC %</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__2"
class="entry">BASC Type</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__3"
class="entry">Initial Bid</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__4"
class="entry">Net Bid compared in Auction</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__5"
class="entry">Winning Price</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__6"
class="entry">Media Cost</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__7"
class="entry">Fees</th>
<th
id="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__8"
class="entry">Total Buyer Payment</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__1">10%</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__2">Fee</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__3">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__4">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__5">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__6">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__7">$0.12
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__8">$1.32
CPM</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__1">10%</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__2">Deduction</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__3">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__4">$1.08
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__5">$1.08
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__6">$1.20
CPM</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__7">None</td>
<td class="entry"
headers="buyer_auction_service_charge_mechanics__table-c2674972-4031-4c06-95e9-26b849cf4676__entry__8">$1.20
CPM</td>
</tr>
</tbody>
</table>



>

## Inventory Discrepancy and Bid Calculation

When buying ads through the Auction Service,
Xandr may reduce the bid amount submitted by
Company due to discrepancy offsets based on historical counting
differences with the inventory provider.






