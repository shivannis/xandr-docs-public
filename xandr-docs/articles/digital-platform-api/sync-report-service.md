---
Title : Sync Report Service
Description : This page is a placeholder, as this service is currently under
ms.date: 10/28/2023
ms.custom: digital-platform-api
development.
---


# Sync Report Service



This page is a placeholder, as this service is currently under
development.



## Reports Using this Service

The following reports use this service. See the pages below for example
usage.



- <a
  href="digital-api-internal/segment-overlap-report.md"
  class="xref" target="_blank">Segment Overlap Report</a>
- <a
  href="digital-api-internal/seller-report.md"
  class="xref" target="_blank">Seller Report</a>







## Sorting and Pagination

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003b02__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00003b02__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003b02__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00003b02__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__1"><code
class="ph codeph">offset</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__3"><code class="ph codeph">24</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b02__entry__4">The
starting position of the pointer into the array of results.
<p><strong>Default:</strong> <code class="ph codeph">0</code></p>
<p><strong>Filter by:</strong> No</p>
<p><strong>Sort by:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__1"><code
class="ph codeph">count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__3"><code class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b02__entry__4">How
many results to return, starting at the value of <code
class="ph codeph">offset</code>.
<p><strong>Default:</strong> <code class="ph codeph">20</code></p>
<p><strong>Filter by:</strong> No</p>
<p><strong>Sort by:</strong> No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__1"><code
class="ph codeph">orders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b02__entry__3"><code
class="ph codeph">[{"direction": "DESC", "order_by": "avg_imps"}]</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b02__entry__4">You
may sort the results, e.g. to see the highest-volume sellers, sort in
descending order by <code class="ph codeph">avg_imps</code>.
<p><strong>Default:</strong> <code class="ph codeph">20</code></p>
<p><strong>Filter by:</strong> No</p>
<p><strong>Sort by:</strong> No</p></td>
</tr>
</tbody>
</table>






