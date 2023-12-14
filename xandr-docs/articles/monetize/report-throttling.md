---
Title : Report Throttling
Description : In order to ensure that our systems operate as smoothly as possible for
ms.date: 10/28/2023
all users, report requests are throttled at both the member and user
levels. The limits and how they are applied are described below.
---


# Report Throttling





In order to ensure that our systems operate as smoothly as possible for
all users, report requests are throttled at both the member and user
levels. The limits and how they are applied are described below.

User Limits

When a report is submitted by a user, a check is performed to see if the
user has submitted 6 report requests in the past 15 minutes that are
either in pending status or currently being processed. If that limit has
been met, an error message is generated.

Member Limits

Each member is limited to 5 report requests being processed at the same
time (including all users under that member). Any report requests
submitted in excess of this limit are placed in a queue. Each member can
have up to 100 report requests in the queue at a time. If the member
exceeds this amount, they will receive a `LIMIT` on their next `POST`.

Example

User- and member-level throttling/limits interact with each other. The
following example attempts to demonstrate a typical scenario. Assume
that User A and User B are associated with the same member. All members
have a limit of 5 report requests being processed concurrently. We
assume, for this example, that the following report requests are all
submitted within a 15 minute time span:



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a06__entry__1" class="entry">Report Request</th>
<th id="ID-00001a06__entry__2" class="entry">User</th>
<th id="ID-00001a06__entry__3" class="entry">Status</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001a06__entry__1">1</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001a06__entry__1">2</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Processing</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001a06__entry__1">3</td>
<td class="entry" headers="ID-00001a06__entry__2">User B</td>
<td class="entry" headers="ID-00001a06__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001a06__entry__1">4</td>
<td class="entry" headers="ID-00001a06__entry__2">User B</td>
<td class="entry" headers="ID-00001a06__entry__3">Processing</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001a06__entry__1">5</td>
<td class="entry" headers="ID-00001a06__entry__2">User B</td>
<td class="entry" headers="ID-00001a06__entry__3">Processing</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001a06__entry__1">6</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Enqueued</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001a06__entry__1">7</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Enqueued</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001a06__entry__1">8</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Enqueued</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001a06__entry__1">8</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Enqueued</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001a06__entry__1">10</td>
<td class="entry" headers="ID-00001a06__entry__2">User A</td>
<td class="entry" headers="ID-00001a06__entry__3">Error</td>
</tr>
</tbody>
</table>



Report request \# 6 is placed in the queue, since there are already 5
report requests being processed for this member. For the same reason,
requests \# 6-9 are also placed in the queue. Finally, we can see that
request \# 10 causes an error to be generated, since User A has
submitted their 7th report request within a 15 minute time span.





Related Topics

- <a href="general-reporting-concepts.md" class="xref">General Reporting
  Concepts</a>
- <a href="network-reporting.md" class="xref">Network Reporting</a>
- <a href="analytics-reporting.md" class="xref">Analytics Reporting</a>






