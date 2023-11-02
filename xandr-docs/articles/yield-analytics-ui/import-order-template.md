---
Title : Import Order Template
Description : Download and complete this <a
ms.date : 10/28/2023
ms.custom : yield-analytics-ui
href="https://yieldex.atlassian.net/wiki/download/attachments/1081369/Deal%20Planner%20Expected%20Order%20Import%20Format.xls?version=1&amp;modificationDate=1382985797864&amp;api=v2"
---


# Import Order Template



Download and complete this <a
href="https://yieldex.atlassian.net/wiki/download/attachments/1081369/Deal%20Planner%20Expected%20Order%20Import%20Format.xls?version=1&amp;modificationDate=1382985797864&amp;api=v2"
class="xref" target="_blank">Excel template</a> to import an order.



## Template Fields

The fields on the template are:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002493__entry__1" class="entry">Field</th>
<th id="ID-00002493__entry__2" class="entry">Required?</th>
<th id="ID-00002493__entry__3" class="entry">Notes</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Order ID</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Order Management
System (OMS) ID, or a sequential number</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Order Name</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">The order name should
follow your standard naming structure</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Advertiser </td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Advertiser names
should match those entered into your ad server</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Industry</td>
<td class="entry" headers="ID-00002493__entry__2">N</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Salesperson</td>
<td class="entry" headers="ID-00002493__entry__2">N</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Agency</td>
<td class="entry" headers="ID-00002493__entry__2">N</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Order Line ID</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Order Line Name </td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">External Target
ID</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Target Expression</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Complete targeting
expression. Example: ad size in ('728x90') and area in ('Hotel') and
site in ('Great Bookings')</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Start Date</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Order start date --
mm/dd/yy (11/27/13)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">End Date</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Order end date --
mm/dd/yy (11/27/13)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Pricing Type</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">How is the deal
priced. Example: flat rate, by volume, or performance -- CPD; CPA; CPC;
CPM</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Contract Type</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">What type of deal is
this -- Bulk; House; Sponsorship; Time-Based Bulk; Weight-Based Bulk;
Advertising Exchange; Unknown; Standard; PSA; Text Link</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002493__entry__1">Impressions </td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">How many impressions
are included in this proposal? -- standard numerical entry, without any
formatting (100001)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002493__entry__1">Sold</td>
<td class="entry" headers="ID-00002493__entry__2">Y</td>
<td class="entry" headers="ID-00002493__entry__3">Contracted CPM value
-- standard currency input with two decimal places (10.01)</td>
</tr>
</tbody>
</table>




## Notes on Using the Template

- The External Target ID or Target
  Expression should be filled out. The ID is used to lookup
  targeting: If both fields are completed, the targeting expression is
  used.
- Only order lines that have all of the required details completed are
  imported, all others will be excluded. (This also applies to invalid
  targeting expressions.)
- All orders created via Evaluate Orders (Deal Planner) will appear in
  the Orders table with a Proposed
  status.
- If two users edit the same proposal simultaneously, the most recent
  changes are used.
- Proposals created in yield analytics are kept in the database for
  seven days, unless they are replaced with a matching order during
  nightly processing.
  - The amount of time that proposals stay in the system can be
    configured. See your Client Services Manager for details.
- The column headers in the template are there for ease of completion,
  but they aren't required for the import process to work.




## Related Topics




- <a href="evaluate-orders-overview.md" class="xref">Evaluate Orders
  Overview</a>
- <a href="evaluate-the-yield-of-an-order.md" class="xref">Evaluate the
  Yield of an Order</a>  
    







<a href="orders-overview.md" class="link">Orders
Overview</a>






