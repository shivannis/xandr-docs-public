---
Title : Reconciling Your Invoice with Reporting
Description : You can log into the UI and use the Buying Billing Report and Selling
ms.date: 10/28/2023
Billing Report to assess and confirm charges you see on your invoice.
---


# Reconciling Your Invoice with Reporting





You can log into the UI and use the Buying Billing Report and Selling
Billing Report to assess and confirm charges you see on your invoice.
This page explains how to run the report and find the desired invoice
fields.

>

For a detailed explanation of the fields on your invoice, see
<a href="understanding-your-invoice.md" class="xref"
title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
your Invoice</a>.

<div class="div">

>



<b>Note:</b> For Sellers looking for
information on how to reconcile your Seller Statement with reporting,
see <a href="reconciling-your-seller-statement-with-reporting.md"
class="xref">Reconciling your Seller Statement with Reporting</a>.











>

## Run the Buyer Billing Report

In the UI, run the Buying Billing Report to confirm the cost of media,
buyer auction service fee, managed ad serving fee, and creative overage
fee amounts on your invoice.

On the Member reporting screen, select **Buying Billing Report** under
**Type**. Enter the **Range**, **Interval** (how the data will be
grouped), and **Timezone** and then click **Run report**.

>



<b>Note:</b> Certain fields, such as some fee
information for unmet minimums, and log-level data are not currently
available in the reporting.







>

## Confirm Invoice Values (Buyers)

After running the report, you can confirm the values for each of the
fields below.



>

## Cost of Media

This is the amount to be paid to Xandr for media
purchases. You can find this value in your report in the row that
displays RTB impressions that were not cleared direct, where Cleared
Direct is zero and Impression Type is RTB. The values in the Imps and
Media Cost columns in the report should match the values in the Billable
Units and Amount columns on your invoice.



>

## Buyer Auction Service Fee

This is the fee charged for:

- impressions bought from third parties (where Cleared Direct is "1"),
  typically Google or Yahoo!.
- disclosed Buyer deductions (where Cleared Direct is "0").

It is charged in addition to your media cost. For more information, see
<a href="buyer-auction-service-charge-mechanics.md" class="xref">Buyer
Auction Service Charge Mechanics</a>. You can find this value in your
report in the Auction Service Fees column. The total at the bottom of
the column in the report should match the value in the Amount column on
your invoice.



>

## Viewable Marketplace

For a buyer who wants to only pay for impressions that are viewable,
Xandr offers the **Viewable Marketplace**. For
more details, see the "Guaranteed Outcomes" topic within the UI's Help
Center. Xandr provides the following details on
the invoice if you are using the Viewable Marketplace:

1.  The type of Viewable Marketplace that was purchased

2.  The number of billable units ("views") bought

3.  The Cost of Media purchased via the Viewable Marketplace

The Buying Billing Report is to be used to reconcile the invoice. Before
running the report, select Clearing Event
Units (under Metrics) and
Clearing Event (under
Dimensions). This will ensure that the
report contains the relevant information.



>

## Creative Overage Fee

This is the amount charged for serving creatives that are over the
maximum size specified in your Xandr contract.
For each oversized creative, the difference between (a) the size of the
creative and (b) the maximum creative size outlined in your contract is
multiplied by (c) the number of impressions where the creative served,
and then by (d) the bandwidth charge in your contract is equal to the
creative overage fee we charge each month.

>



<b>Note:</b> (b) the **maximum creative size**
is in **KB** where as (d) the **bandwidth charge** is in **GB**.When
converting from GB to KB, **divide by 976,563** because
Xandr uses the **kibibyte** metric for KB.





For example, let's say the maximum creative size in your contract is (b)
40KB, you have a (a) 60KB creative that served (c) 100,000 times, and
your bandwidth fee is (d) $2.50 per GB (which converts to 976,563 KB).

Your creative overage fee would be calculated as follows: \[ \[ (a)
60KB - (b) 40KB \] x 100,000 imps \] x \[ (d) $2.50 / 976,563 KB \] =
$5.12

You can find this value in your report in the Creative Overage Fees
column. The total at the bottom of the column in the report should match
the value in the Amount column on your invoice.



>

## List of Reports to Use to Reconcile Invoice Charges

The table below lists charges that can commonly appear on your invoice
and which billing report to use to reconcile those charges. For some
charges, you may need to consult your contract with
Xandr.

<table
id="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1"
class="entry">Charge Description</th>
<th
id="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2"
class="entry">Report to Use</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Completes
- Custom/Standard Video</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buyer
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Views
- Custom/Standard Display</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buyer
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Booked
Revenue</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Buyer
Auction Service Charge</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Buyer
Auction Service Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Click
Tracker Fees</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Cost
of Media</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Cost
of Media Net Fees</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Creative
Hosting (Video)</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Creative
Overage Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Foreign
Exchange Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Imp
Tracker Fees</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">(Managed)
Ad Serving Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report (and the Selling Billing Report if you have access to
it)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Ad
Serving (Hosted Video)</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report (and the Selling Billing Report if you have access to
it)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Ad
Serving (Non-Hosted Video)</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Buying
Billing Report (and the Selling Billing Report if you have access to
it)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Creative
Audit Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Completed
Creative Audits Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Priority
Creative Audit Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Completed
Creative Audits Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Bidder
Service Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Console
Service Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Finance
Charge</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Log
Level Data</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Onboarding
Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Per
Look Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Seller
Rev Share Minimum</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Service
Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Unmet
Min. Service Fee (Buyer auction serv. fee)</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Unmet
Minimum Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Unmet
Minimum Service Fee (Spend)</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Unmet
Minimum Volume</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">User
ID Mapping</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Consult
your contract with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Cost
of Data</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Data
Usage Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Data
Sales Tax</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Data
Usage Report</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Seller
Auction Service Fee</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Selling
Billing Report</td>
</tr>
<tr class="even row">
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__1">Cost
of Segment Data</td>
<td class="entry"
headers="reconciling_your_invoice_with_reporting__table-fd087171-2bce-4f8a-ac79-650e19057c4c__entry__2">Data
Usage Report</td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="understanding-your-invoice.md" class="xref"
  title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
  Your Invoice</a>
- <a href="billing-faq.md" class="xref">Billing and Settlement FAQ</a>






