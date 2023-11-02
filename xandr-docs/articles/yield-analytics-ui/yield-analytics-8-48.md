---
Title : Yield Analytics 8.48
Description : <table class="table">
ms.date : 10/28/2023
ms.custom : yield-analytics-ui
<thead class="thead">
<tr class="header row">
<th id="ID-00003f9f__entry__1" class="entry">Fixes, Improvements and
Additions</th>
<th id="ID-00003f9f__entry__2" class="entry">Integrations Affected</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00003f9f__entry__1">Order Line Import
Clean-up - We are enhancing the nightly import process to clean-up order
lines that we've seen in the past, but that are no longer available from
the source ad server.  If order lines are in a cancelled state and have
---


# Yield Analytics 8.48



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003f9f__entry__1" class="entry">Fixes, Improvements and
Additions</th>
<th id="ID-00003f9f__entry__2" class="entry">Integrations Affected</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00003f9f__entry__1">Order Line Import
Clean-up - We are enhancing the nightly import process to clean-up order
lines that we've seen in the past, but that are no longer available from
the source ad server.  If order lines are in a cancelled state and have
no historical delivery data, they will be removed and their associated
artifacts deleted from the system.  This change ensures a clean
representation of future demand data to ensure accurate
forecasting.</td>
<td class="entry" headers="ID-00003f9f__entry__2">All</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003f9f__entry__1">Line Item Revenue
Reporting - Revenue data for Monetize impression based line items will
now be calculated at the line item level instead of the previous process
that calculated at the campaign level.  This process removes potential
incorrect revenue at-risk data and allows for more accurate revenue
reporting across the yield analytics system.</td>
<td class="entry" headers="ID-00003f9f__entry__2">Ad Server:
Monetize</td>
</tr>
</tbody>
</table>





<a href="release-notes.md" class="link">Release Notes</a>






